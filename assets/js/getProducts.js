"use strict";
const trendingBidsContainer = document.querySelector(".trending-bids");
const currentBidsContainer = document.querySelector(".current-bids");
const futureBidsContainer = document.querySelector(".future-bids");
const finishedBidsContainer = document.querySelector(".finished-bids");

async function fetchProductData(key = "3") {
  /**
   * Fetches product data from the specified endpoint.
   * @param {string} key - The product key to fetch data for (default: "3").
   * @returns {Promise<object|null>} - A Promise that resolves to a JSON object
   *                                  containing the product data, or null if
   *                                  an error occurs.
   */
  const url = `https://corsproxy.io/?url=http://hk.herova.net/products/fetch.php?key=${key}`;

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

async function setProductsData() {
  const currentBids = await fetchProductData(1);
  renderSwiperData(currentBidsContainer, currentBids);

  const trendingBids = await fetchProductData(1);
  renderSwiperData(trendingBidsContainer, trendingBids);

  const endedBids = await fetchProductData(3);
  renderSwiperData(finishedBidsContainer, endedBids, true);
  const soonBids = await fetchProductData(4);
  renderSwiperData(futureBidsContainer, soonBids);
}

setProductsData();
