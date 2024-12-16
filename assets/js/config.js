let cookies;
const signupAPI = "https://hk.herova.net/login_API/signUp-api.php";
const otpAPI = "https://hk.herova.net/login_API/SendOTP.php";
const newsAPI = "https://hk.herova.net/InPageApi/news-api.php?page=1&limit=10";

const proxySignupAPI =
  "https://cors-anywhere.herokuapp.com/https://hk.herova.net/login_API/signUp-api.php";
const proxyOtpAPI =
  "https://cors-anywhere.herokuapp.com/https://hk.herova.net/login_API/SendOTP.php";

export const helper = {
  getNews: async function () {
    try {
      const response = await fetch(newsAPI);
      const data = await response.json();
      const news = data.data;

      return news;
    } catch (error) {
      return [];
    }
  },

  signup: async function (userData) {
    try {
      const request = await fetch(signupAPI, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(userData),
      });

      const response = await request.json();
      const data = response.data;
      console.log(response);

      //this.setCookies([
      //["EMAIL", data.email],
      // ["USER_ID", data.id],
      // ["USER_NAME", data.name],
      //]);

      return response;
    } catch (error) {
      console.error("Error:", error);
      return {
        status: "error",
        message: "Something went wrong!\nNetwork error",
      };
    }
  },

  sendOTP: async function () {
    try {
      const request = await fetch(otpAPI, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          // Cookie: document.cookie,
        },
        body: JSON.stringify({
          key: "SM",
        }),
        credentials: "include",
        redirect: "follow",
      });

      const response = await request.json();
      console.log(response);

      return response;
    } catch (error) {
      console.error("Error:", error);
      return {
        status: "error",
        message: "Something went wrong!\nNetwork error",
      };
    }
  },

  getAllCookies: function () {
    cookies = document.cookie.split("; ").reduce((acc, cookie) => {
      const [key, value] = cookie.split("=");
      acc[key] = decodeURIComponent(value);
      return acc;
    }, {});
    console.log(cookies);
    return cookies;
  },

  getCookie: function (key) {
    helper.getAllCookies();
    console.log(cookies.key);
    return cookies.key;
  },

  setCookies: function (cookies) {
    cookies.forEach(([key, value]) => {
      document.cookie = `${key}=${value};`;
    });
  },
};
