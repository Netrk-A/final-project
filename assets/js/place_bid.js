const imageUpload = document.getElementById("imageUpload");
const imgContainer = document.querySelector(".upload-container");
const imagePreview = document.getElementById("imagePreview");
const uploadContainer = document.querySelector(".upload-container");
const submitBtn = document.querySelector(`input[type='submit']`);
const categoriesDOM = document.querySelector("#category");
let files = []; // Change file to files (array)
const inputFields = {
  name: document.getElementById("productName"),
  description: document.getElementById("description"),
  starting_price: document.getElementById("startingPrice"),
  expected_price: document.getElementById("expectedPrice"),
  location: document.getElementById("location"),
  start_date: document.getElementById("startingDate"),
  delivery_date: document.getElementById("deliveryDate"),
  period_of_bid: document.getElementById("period"),
  category_id: categoriesDOM,
};
const formData = new FormData();
const formObject = {};

// image upload functionality
imageUpload.addEventListener("change", (event) => {
  files = event.target.files; // Store multiple files
  if (files.length > 0) {
    // Display the first image preview (optional)
    imagePreview.src = URL.createObjectURL(files[0]);
    imgContainer.classList.add("hide");
  }
});

// manage categories
async function fetchCategories() {
  const url = "https://hk.herova.net/products/fetch.php?key=2";
  try {
    const response = await fetch(url);

    if (!response.ok) {
      const errorText = await response.json(); // Try to get error details from the server
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

async function manageCategories() {
  const categories = await fetchCategories();
  if (categories) {
    categories.forEach((category) => {
      const markup = `<option value="${category.CAT_ID}">${category.CAT_NAME}</option>`;
      categoriesDOM.insertAdjacentHTML("beforeend", markup);
    });
  }
}

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

  files = e.dataTransfer.files; // Store multiple files from drag and drop
  imageUpload.files = e.dataTransfer.files; // Set the dropped files to the input

  // Trigger the change event to handle preview logic (as above)
  const event = new Event("change", { bubbles: true });
  imageUpload.dispatchEvent(event);
});

// collecting form data
function collectFormData() {
  // console.log("data collected");
  for (const key in inputFields) {
    if (inputFields.hasOwnProperty(key)) {
      const value = inputFields[key].value;
      formData.append(`${key}`, value);
      formObject[`${key}`] = value;
    }
  }
  //add the images
  for (let i = 0; i < files.length; i++) {
    formData.append("photo[]", files[i]); // Append each file with 'photo[]'
  }
  formObject[`photo`] = files; // Store files in formObject
  // log the data
  formData.forEach((value, key) => {
    console.log(`${key} : ${value}`);
  });
  console.log(formObject.photo);
}

async function postData() {
  const url = "https://hk.herova.net/products/new_Product.php";
  try {
    const response = await fetch(url, {
      method: "POST",
      body: formData,
    });
    console.log(response);
    console.log(response.text);

    if (!response.ok) {
      throw new Error(
        `HTTP error! status: ${response.status},message ${response.message}`
      );
    }

    const responseData = await response.json();
    console.log("swal success");
    Swal.fire({
      text: responseData.message,
      icon: "success",
      confirmButtonText: "continue",
    });
  } catch (error) {
    console.log("swal success");
    Swal.fire({
      title: "Register Failure",
      text: error.message,
      icon: "error",
      confirmButtonText: "Retry",
    });
  }
}

submitBtn.addEventListener("click", (e) => {
  e.preventDefault();
  collectFormData();
  postData();
});

manageCategories();
