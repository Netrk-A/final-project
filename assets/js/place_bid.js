const imageUpload = document.getElementById("imageUpload");
const imgContainer = document.querySelector(".upload-container");
const imagePreview = document.getElementById("imagePreview");
const uploadContainer = document.querySelector(".upload-container");
const submitBtn = document.querySelector(`input[type='submit']`);
const categoriesDOM = document.querySelector("#category");
let file;
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
  file = event.target.files[0];
  if (file) {
    imagePreview.src = URL.createObjectURL(file);
    imgContainer.classList.add("hide");
  }
});

// manage categories
async function fetchCategories() {
  const url = "https://hk.herova.net/products/fetch.php?key=2";
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

async function manageCategories() {
  const categories = await fetchCategories();
  categories.forEach((category) => {
    const markup = `<option value="${category.CAT_ID}">${category.CAT_NAME}</option>`;
    categoriesDOM.insertAdjacentHTML("beforeend", markup);
  });
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

  file = e.dataTransfer.files[0];
  imageUpload.files = e.dataTransfer.files; // Set the dropped file to the input

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
  //add the image
  formData.append("photo", file);
  formObject[`photo`] = file;
  // log the data
  formData.forEach((value, key) => {
    console.log(`${key} : ${value}`);
  });

  // for (let [key, value] of formData.entries()) {
  //   console.log(value);
  // }
}

async function postData() {
  //console.log(formObject);
   
  // console.log(JSON.stringify(formData), formData);
  const url = "https://hk.herova.net/products/new_Product.php";
  try {
    const response = await fetch(url, {
      method: "POST",
      body: formData,
    });

    if (!response.ok) {
      throw new Error(`HTTP error! status: ${response.status},message ${response.message}`);
    }

    const responseData = await response.text(); // Or response.json() if the server returns JSON
    console.log("Success:", responseData);
  } catch (error) {
    console.error("Error:", error);
  }
}

submitBtn.addEventListener("click", (e) => {
  e.preventDefault();
  collectFormData();
  postData();
});

manageCategories();
