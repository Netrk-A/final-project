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
        message: "Something went wrong!\nNetwork error",
      };
    }
  },

  sendOTP: async function () {
    try {
      const response = await fetch(proxyOtpAPI, {
        method: "POST",
        headers: {
          Authorization:
            "Basic os_v2_app_qreipn6eevcnlmthhbyklwilvtuwkouwnsvekumx5lwcrnxiujj7cgccpzp5edmpuz5omh22hez2wvpdw4euqovnebsbp2b22kbmb5q",
          "Content-Type": "application/json",
          Cookie:
           "EMAIL=aymanhussein0200@gmail.com; USER_ID=83; USER_NAME=scasc"
,
        },
        body: JSON.stringify({
          key: "SM",
        }),
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
    console.log(cookies);
    return cookies;
  },

  getCookie: function (key) {
    helper.getAllCookies();
    console.log(cookies);
    return cookies[key];
  },
};
