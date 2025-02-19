"use strict";
const poster = document.querySelector(".poster");
const title = poster.querySelector(".title");
const description = poster.querySelector(".description .text");
const urlParams = new URLSearchParams(window.location.search);
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
      //   console.log(res.data);
      return res.data;
    } else {
      console.log("Failed to retrieve product data.");
    }
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
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
      console.log(res.data);
      return res.data;
    } else {
      console.log("Failed to retrieve product data.");
    }
  } catch (error) {
    console.error("Error fetching data:", error);
    return null;
  }
}

async function manageProduct() {
  const product = await fetchProduct();
  console.log(product);
  poster.id = product.I_ID;

  title.textContent = product.ITEM_NAME;
  description.textContent = product.DESCRIPTION;
}

async function manageTopBidders() {
  const topBidders = await fetchTopBidders();
  console.log(topBidders);
}

manageProduct();
manageTopBidders();
