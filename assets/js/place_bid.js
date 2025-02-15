const imageUpload = document.getElementById("imageUpload");
const imagePreview = document.getElementById("imagePreview");
const uploadContainer = document.querySelector(".upload-container");
const submitBtn = document.querySelector(`input[type='submit']`);
const inputFields = {
  images: document.getElementById("imageUpload"),
  name: document.getElementById("productName"),
  description: document.getElementById("description"),
  startingPrice: document.getElementById("startingPrice"),
  expectedPrice: document.getElementById("expectedPrice"),
  location: document.getElementById("location"),
  startingDate: document.getElementById("startingDate"),
  deliveryDate: document.getElementById("deliveryDate"),
  period: document.getElementById("period"),
};

// image upload functionality
imageUpload.addEventListener("change", (event) => {
  const file = event.target.files[0];
  if (file) {
    imagePreview.src = URL.createObjectURL(file);
  }
});

uploadContainer.addEventListener("dragover", (e) => {
  e.preventDefault();
  uploadContainer.classList.add("highlight"); // Add a highlight class for visual feedback
});

uploadContainer.addEventListener("dragleave", () => {
  uploadContainer.classList.remove("highlight");
});

uploadContainer.addEventListener("drop", (e) => {
  e.preventDefault();
  uploadContainer.classList.remove("highlight");

  const file = e.dataTransfer.files[0];
  imageUpload.files = e.dataTransfer.files; // Set the dropped file to the input

  // Trigger the change event to handle preview logic (as above)
  const event = new Event("change", { bubbles: true });
  imageUpload.dispatchEvent(event);
});

// collecting form data
submitBtn.addEventListener("click", (e) => {
  e.preventDefault();
  console.log(inputFields);
});
