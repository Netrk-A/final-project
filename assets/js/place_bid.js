const imageUpload = document.getElementById("imageUpload");
const imagePreview = document.getElementById("imagePreview");
const uploadContainer = document.querySelector(".upload-container");
const submitBtn = document.querySelector(`input[type='submit']`);
let file;
const inputFields = {
  productName: document.getElementById("productName"),
  description: document.getElementById("description"),
  startingPrice: document.getElementById("startingPrice"),
  expectedPrice: document.getElementById("expectedPrice"),
  location: document.getElementById("location"),
  startingDate: document.getElementById("startingDate"),
  deliveryDate: document.getElementById("deliveryDate"),
  period: document.getElementById("period"),
};
const formData = new FormData();

// image upload functionality
imageUpload.addEventListener("change", (event) => {
  file = event.target.files[0];
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

  file = e.dataTransfer.files[0];
  imageUpload.files = e.dataTransfer.files; // Set the dropped file to the input

  // Trigger the change event to handle preview logic (as above)
  const event = new Event("change", { bubbles: true });
  imageUpload.dispatchEvent(event);
});

// collecting form data
function collectFormData() {
  for (const key in inputFields) {
    if (inputFields.hasOwnProperty(key)) {
      const value = inputFields[key].value;
      formData.append(`${key}`, value);
    }
  }
  //add the image
  formData.append("image", file, file.name);
  // log the data
  // for (let [key, value] of formData.entries()) {
  //   console.log(key, value);
  // }
}

function validateFormData() {}

submitBtn.addEventListener("click", (e) => {
  e.preventDefault();
  collectFormData();
  submitBtn.disabled = true;
  const validData = validateFormData();
});
