// ======= DOM Elements =======
const body = document.querySelector("body");
const menuBtn = document.getElementById("menu");
const navBar = document.querySelector(".navbar");
const navOverlay = document.querySelector(".nav-overlay");
const newsContainer = document.querySelector(".news");
const newsText = document.querySelector(".news-content");

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
  console.log(path);

  document.querySelectorAll(".nav-item.active").forEach((link) => {
    link.classList.remove("active");
  });

  document.querySelectorAll(`.nav-item[href="${path}"]`).forEach((navItem) => {
    navItem.classList.add("active");
  });
})();

// ======= News Control =======

// Example news response
const newsResponse = {
  status: 1,
  message: "fetched successfully",
  data: [
    { id: 1, news_data: "hi there for 1 minute", news_timer: 1 },
    { id: 2, news_data: "hi there for three minutes", news_timer: 3 },
    { id: 3, news_data: "hi there for two minutes", news_timer: 2 },
  ],
};

// Handle news display
function controlNews(news) {
  if (!news.status) return;
  cycleNewsItems(news.data, 0);
}

function cycleNewsItems(newsItems, index) {
  if (index >= newsItems.length) index = 0;

  const currentItem = newsItems[index];

  // Update DOM with current news item
  newsContainer.dataset.id = currentItem.id;
  newsContainer.dataset.time = currentItem.news_timer;
  newsText.textContent = currentItem.news_data;

  // Update text scrolling speed
  updateTextSpeed();

  // Schedule the next news item
  setTimeout(() => {
    cycleNewsItems(newsItems, index + 1);
  }, (currentItem.news_timer * 60 + 20) * 1000);
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
controlNews(newsResponse);
window.addEventListener("resize", updateTextSpeed);
