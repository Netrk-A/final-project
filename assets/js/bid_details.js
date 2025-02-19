"use strict";
const poster = document.querySelector(".poster");
const title = poster.querySelector(".title");
const description = poster.querySelector(".description .text");
const urlParams = new URLSearchParams(window.location.search);
const topBiddersDOM = document.querySelector(" .top_bidders .bidders");
const TOP3DOM = topBiddersDOM.querySelectorAll(".top_bidder");
const recommendedBidsContainer = document.querySelector(".recommended-bids");
const id = urlParams.get("id");

async function fetchProduct() {
  if (!id) {
    console.error("404 page not found (كدا وكدا يعني)");
    return;
  }
  const url = `https://hk.herova.net/bids/get_product_data.php?id=${id}`;
  try {
    const response = await fetch(url);

    if (!response.ok) {
      const errorText = await response.text(); // Try to get error details from the server
      throw new Error(
        `HTTP error! status: ${response.status},  Details: ${errorText}`
      );
    }

    const res = await response.json();
    if (res) {
      return res.data;
    } else {
      console.log("Failed to retrieve product data.");
    }
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
}

async function fetchProductList(key = "3") {
  /**
   * Fetches product data from the specified endpoint.
   * @param {string} key - The product key to fetch data for (default: "3").
   * @returns {Promise<object|null>} - A Promise that resolves to a JSON object
   *                                  containing the product data, or null if
   *                                  an error occurs.
   */
  const url = `http://hk.herova.net/products/fetch.php?key=${key}`;
  // const url = `https://corsproxy.io/?url=http://hk.herova.net/products/fetch.php?key=${key}`;

  try {
    const response = await fetch(url);

    if (!response.ok) {
      const errorText = await response.text(); // Try to get error details from the server
      throw new Error(
        `HTTP error! status: ${response.status},  Details: ${errorText}`
      );
    }

    const res = await response.json();
    if (res) {
      return res.data;
    } else {
      console.log("Failed to retrieve product data.");
    }
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
}

function renderSwiperData(container, products, ended = false) {
  console.log(products);
  if (!products) {
    console.log(`${container.classList[0]} has no products`);
    return;
  }
  container.innerHTML = "";
  products.forEach((product) => {
    let productMarkup;
    if (ended) {
      productMarkup = `
                <div class="swiper-slide finished-bid product">
                    <div class="img">
                        <img src="assets/img/product.png" alt="product" loading="lazy">
                    </div>
                    <div class="details">
                        <p class="title">${product.ITEM_NAME}</p>
                        <p class="sold-out">Sold out</p>
                        <p class="last-price">Sold for:
                            <span class="last-price"> $1000</span>
                        </p>
                    </div>
                </div>
      `;
    } else {
      productMarkup = `
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">${product.ITEM_NAME}</p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">${product.END_DATE}</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="bids.php?id=${product.I_ID}" class="primary-btn enroll">Enroll Now</a>
                </div>
    `;
    }
    container.insertAdjacentHTML("beforeend", productMarkup);
  });
}

async function manageRecommended() {
  const products = await fetchProductList();
  renderSwiperData(recommendedBidsContainer, products);
}

async function fetchTopBidders() {
  const url = `https://hk.herova.net/bids/top3.php?id=16`;
  try {
    const response = await fetch(url);

    if (!response.ok) {
      const errorText = await response.text(); // Try to get error details from the server
      throw new Error(
        `HTTP error! status: ${response.status},  Details: ${errorText}`
      );
    }

    const res = await response.json();
    if (res) {
      return res.data;
    } else {
      console.log("Failed to retrieve product data.");
    }
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
}

function addNewTopBidder(bidder, rank) {
  // console.log("new top bidder", bidder);
  const element = document.querySelector(`.top_bidder[data-rank="${rank}"]`);
  element.dataset.rank = rank;
  element.id = bidder.BIDDER_ID;
  element.querySelector(".name").textContent = bidder.USER_NAME;
  element.querySelector(".bid_price").textContent =
    Math.floor(bidder.BID_AMOUNT) + "$";
}

function swapRank(rank1, rank2) {
  const element1 = topBiddersDOM.querySelector(
    `.top_bidder[data-rank="${rank1}"]`
  );
  const element2 = topBiddersDOM.querySelector(
    `.top_bidder[data-rank="${rank2}"]`
  );
  element1.querySelector(".rank").textContent = rank2 + ".";
  element2.querySelector(".rank").textContent = rank1 + ".";

  element1.dataset.rank = rank2;
  element2.dataset.rank = rank1;
}

function renderTopBidders(top3) {
  // console.log(top3, TOP3DOM);
  for (let i = 0; i < 3; i++) {
    const bidderDOM = topBiddersDOM.querySelector(
      `.top_bidder[data-rank="${i + 1}"]`
    );

    if (+top3[i].BIDDER_ID !== +bidderDOM.id) {
      const found = top3.find((bidder) => +bidderDOM.id === +bidder.BIDDER_ID);

      if (found) {
        // console.log(`new place for  ${found.USER_NAME}`);
        const newRank = top3.indexOf(found) + 1;
        const oldRank = bidderDOM.dataset.rank;
        swapRank(newRank, oldRank);
        addNewTopBidder(top3[newRank - 1], oldRank);
      } else {
        addNewTopBidder(top3[i], i + 1);
      }
    }
  }
}

async function manageProduct() {
  const product = await fetchProduct();
  // console.log(product);
  poster.id = product.I_ID;

  title.textContent = product.ITEM_NAME;
  description.textContent = product.DESCRIPTION;
}

async function manageTopBidders() {
  const topBidders = await fetchTopBidders();
  renderTopBidders(topBidders);
}

manageProduct();
manageTopBidders();
manageRecommended();
