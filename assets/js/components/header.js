import { helper } from "../config.js";
// ======= DOM Elements =======
const body = document.querySelector("body");
const menuBtn = document.getElementById("menu");
const navBar = document.querySelector(".navbar");
const navOverlay = document.querySelector(".nav-overlay");
const newsContainer = document.querySelector(".news");
const newsText = document.querySelector(".news-content");

const loginBtn = document.querySelector(".login-btn");
const profile = document.querySelector(".bottom-nav .profile");
const profileName = document.querySelector(".bottom-nav .profile p");

const cookies = helper.getAllCookies();

// ======= login click =======
loginBtn.addEventListener(
  "click",
  () => (window.location.href = loginBtn.dataset.href)
);

// ======= cookies Check =======
if (cookies.USER_NAME) {
  loginBtn.innerHTML = cookies.USER_NAME;
  loginBtn.dataset.href = "setting.php";
  profile.href = "settings.php";
  profileName.textContent = cookies.USER_NAME;
}

// ======= Sidebar Control =======

// Toggle sidebar visibility
menuBtn.addEventListener("click", () => {
  navBar.classList.toggle("active");
});

// Hide sidebar when clicking on the overlay
navOverlay.addEventListener("click", () => {
  navBar.classList.remove("active");
});

// ======= Active Page Marking =======
(function markActivePage() {
  let path = window.location.pathname.split("/").pop() || "index.php";
  // console.log(path);

  document.querySelectorAll(".nav-item.active").forEach((link) => {
    link.classList.remove("active");
  });

  document.querySelectorAll(`.nav-item[href="${path}"]`).forEach((navItem) => {
    navItem.classList.add("active");
  });
})();

// ======= News Control =======

// Example news response

// Handle news display
async function controlNews() {
  const newsArr = await helper.getNews();
  // console.log(newsArr);

  if (newsArr == []) return;
  cycleNewsItems(newsArr, 0);
}

function cycleNewsItems(newsItems, index) {
  if (index >= newsItems.length) index = 0;

  const currentItem = newsItems[index];

  // Update DOM with current news item
  newsContainer.dataset.id = currentItem.NEWS_ID;
  newsContainer.dataset.time = 1; //currentItem.news_timer;
  newsText.textContent = currentItem.CONTENT;
  newsText.href = currentItem.LINK;
  // Update text scrolling speed
  updateTextSpeed();

  // Schedule the next news item
  setTimeout(() => {
    cycleNewsItems(newsItems, index + 1);
  }, (1 * 60 + 20) * 1000); //currentItem.news_timer instead of 1
}

// Update text scroll animation duration based on text and container width
function updateTextSpeed() {
  const textWidth = newsText.offsetWidth;
  const containerWidth = newsText.parentElement.offsetWidth;
  const speed = 100; // Speed in pixels per second
  const duration = (textWidth + containerWidth) / speed;

  newsText.style.animationDuration = `${duration}s`;
}

// Start controlling news and adjust scrolling on resize
controlNews();
window.addEventListener("resize", updateTextSpeed);
