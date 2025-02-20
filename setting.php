<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>account</title>
    <link rel="icon" href="assets/img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v5.15.4/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/account.css">
    <style>
    /* .news{
    display: none;
} */
    </style>
</head>

<body>
    <?php include_once "header.php"; ?>
    <div class="account">
        <div class="swap">
            <a class="info" onclick="swapping(1)" href="#toggle1" data-toggle="list">account</a>
            <div class="vertical"></div>
            <a class="balance" onclick="swapping(2)" href="#toggle2" data-toggle="list">balance</a>
            <div class="vertical"></div>
            <a class="orders" onclick="swapping(3)" href="#toggle2" data-toggle="list">products</a>
        </div>

        <div class="form" id="toggle1">
            <img class="user" src="./assets/img/Ellipse 730.png" alt="user">
            <form id="signup" action="" method="post">
                <div class="input-container">
                    <i class="far fa-user"></i>
                    <input type="name" style="min-width: 210px;margin-top: 45px;" name="name" id="name"
                        placeholder="username" autocomplete="on" value="Mohamed" required>
                </div>
                <div class="input-container">
                    <i class="far fa-envelope"></i>
                    <input type="text" style="min-width: 210px;" name="email" id="email" pattern="[^ @]*@[^ @]*"
                        placeholder="email address" value="mohamed15@gmail.com" autocomplete="on" required>
                </div>
                <div class="input-container">
                    <i class="fal fa-phone"></i>
                    <input type="tel" style="min-width: 210px;" name="phone" id="phone" placeholder="phone number"
                        pattern="[0-9]" minlength="9" maxlength="14" autocomplete="on" value="+966 57236936">
                </div>
                <div class="input-container">
                    <i class="fal fa-globe-africa"></i>
                    <input type="text" style="min-width: 210px;" name="country" id="country" placeholder="country"
                        value="Saudi Arabia" autocomplete="on" required>
                </div>
                <div class="input-container">
                    <i class="fal fa-globe-africa"></i>
                    <input type="text" style="min-width: 210px;" name="address" id="address" placeholder="address"
                        value="hufgwifwyuhqrijokjhg323rhi;jok’qjrhefvgc" autocomplete="on" required>
                </div>
                <div class="input-container-two">
                    <div>
                        <i class="fas fa-university"></i>
                        <input type="text" name="gov" id="gov" placeholder="government" value="Elsharqa"
                            autocomplete="on" required>

                    </div>
                    <div>
                        <i class="fal fa-city"></i>
                        <input type="text" name="city" id="city" placeholder="city" value="Elsharqa" autocomplete="on"
                            required>
                    </div>
                </div>
                <div class="input-container">
                    <i class="fal fa-hand-holding-usd"></i>
                    <select style="min-width: 210px;" name="status" required>
                        <option value="inland">inland</option>
                        <option value="outland">outland</option>
                    </select>
                </div>
                <div class="input-container">
                    <i class="far fa-lock"></i>
                    <input type="text" style="min-width: 210px;" id="Password" placeholder="password" name="Password"
                        value="Herova@2024" minlength="8" maxlength="15" autocomplete="off" required>
                </div>
                <a class="button1" type="submit">update</a>
                <p>powered by <a href="herova.net" style="color:#0B8A00;">Herova</a></p>
        </div>
        </form>
    </div>
    </div>
    </div>
    <div class="myOrders hidden" id="toggle3">
        <div class="orderdetails">
            <div class="number">
                <h3>1.</h3>
            </div>
            <div class="photo">
                <img src="./assets/img/product.png" alt="product">
            </div>
            <div class="O-content">
                <div class="name">
                    <h4> The Luxe Houndstooth Lounge Chair</h4>
                </div>
                <div class="name">
                    <h5>Auction End Date:<span> November 1, 2024</span></h5>
                </div>
                <div style="margin-bottom: 5px;color:var(--color-primary);">
                    <p>*15 people rolled in</p>
                </div>
                <div class="name" style="margin-top: 15px; color:var(--color-primary);">
                    <h2>$2000</h2>
                </div>
            </div>
            <div class="closed">
                <h2 style=" color:var(--color-primary);">closed</h2>
            </div>
        </div>
        <div class="orderdetails">
            <div class="number">
                <h3>2.</h3>
            </div>
            <div class="photo">
                <img src="./assets/img/product.png" alt="product">
            </div>
            <div class="O-content">
                <div class="name">
                    <h4> The Luxe Houndstooth Lounge Chair</h4>
                </div>
                <div class="name" style="display:none;">
                    <h5>Auction End Date:<span> November 1, 2024</span></h5>
                </div>
                <div style="margin-bottom: 5px;color:var(--color-primary);">
                    <p>*15 people rolled in</p>
                </div>
                <div class="name" style="margin-top: 15px; color:var(--color-primary);">
                    <h2>$2000</h2>
                </div>
                <div class="buttons">
                    <a class="button1" href="">End</a>
                    <a class="bttn" href="">cancel</a>
                </div>
            </div>

        </div>
        <div class="orderdetails">
            <div class="number">
                <h3>3.</h3>
            </div>
            <div class="photo">
                <img src="./assets/img/product.png" alt="product">
            </div>
            <div class="O-content">
                <div class="name">
                    <h4> The Luxe Houndstooth Lounge Chair</h4>
                </div>
                <div class="name" style="display:none;">
                    <h5>Auction End Date:<span> November 1, 2024</span></h5>
                </div>
                <div style="margin-bottom: 5px;color:var(--color-primary);">
                    <p>*15 people rolled in</p>
                </div>
                <div class="name" style="margin-top: 15px; color:var(--color-primary);">
                    <h2>$2000</h2>
                </div>
                <div class="buttons">
                    <a class="button1" href="">End</a>
                    <a class="bttn" href="">cancel</a>
                </div>
            </div>

        </div>
    </div>
    </div>
    <script>
    function swapping(divNumber) {
        var element1 = document.getElementById("toggle1");
        var element2 = document.getElementById("toggle3");
        var element3 = document.querySelector('body > div.account > div.swap > a.orders');
        var element4 = document.querySelector("body > div.account > div.swap > a.info");


        if (divNumber === 1 && element1.classList.contains("hidden")) {
            element1.classList.remove("hidden");
            element2.classList.add("hidden");
            element4.style.color = "#d56b00";
            element3.style.color = "black";
        } else if (divNumber === 3 && element2.classList.contains("hidden")) {
            element1.classList.add("hidden");
            element2.classList.remove("hidden");
            element3.style.color = "#d56b00";
            element4.style.color = 'black';
        }

    }
    </script>
    <?php include_once "footer.php"; ?>
</body>