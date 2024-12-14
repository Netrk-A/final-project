const signupAPI = "https://hk.herova.net/login_API/signUp-api.php";
let cookies;
const proxySignupAPI =
  "https://cors-anywhere.herokuapp.com/https://hk.herova.net/login_API/signUp-api.php";
// Replace with your API endpoint

export const helper = {
  signup: async function (userData) {
    try {
      const response = await fetch(proxySignupAPI, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(userData),
      });

      const data = await response.json();
      console.log(data);

      return data;
    } catch (error) {
      console.error("Error:", error);
      return {
        status: "error",
        message: "Something went wrong on our side\nplease try again later",
      };
    }
  },

  getAllCookies: function () {
    cookies = document.cookie.split("; ").reduce((acc, cookie) => {
      const [key, value] = cookie.split("=");
      acc[key] = decodeURIComponent(value);
      return acc;
    }, {});
    return cookies;
  },

  getCookie: function (key) {
    helper.getAllCookies();
    return cookies[key];
  },
};
