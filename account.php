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
        .hidden {
            display: none;
        }
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
            <a class="orders" onclick="swapping(3)" href="#toggle3" data-toggle="list">products</a>
        </div>

        <div class="form" id="toggle1">
            <img class="user" src="./assets/img/Ellipse 730.png" alt="user">
            <form id="signup" action="" method="post">
                <div class="input-container">
                    <i class="far fa-user"></i>
                    <input type="name" style="min-width: 210px;margin-top: 45px;" name="name" id="name" placeholder="username" autocomplete="on" value="Mohamed" required>
                </div>
                <div class="input-container">
                    <i class="far fa-envelope"></i>
                    <input type="text" style="min-width: 210px;" name="email" id="email" pattern="[^ @]*@[^ @]*" placeholder="email address" value="mohamed15@gmail.com" autocomplete="on" required>
                </div>
                <div class="input-container">
                    <i class="fal fa-phone"></i>
                    <input type="tel" style="min-width: 210px;" name="phone" id="phone" placeholder="phone number" pattern="[0-9]" minlength="9" maxlength="14" autocomplete="on" value="+966 57236936">
                </div>
                <div class="input-container">
                    <i class="fal fa-globe-africa"></i>
                    <input type="text" style="min-width: 210px;" name="country" id="country" placeholder="country" value="Saudi Arabia" autocomplete="on" required>
                </div>
                <div class="input-container">
                    <i class="fal fa-globe-africa"></i>
                    <input type="text" style="min-width: 210px;" name="address" id="address" placeholder="address" value="hufgwifwyuhqrijokjhg323rhi;jok’qjrhefvgc" autocomplete="on" required>
                </div>
                <div class="input-container-two">
                    <div>
                        <i class="fas fa-university"></i>
                        <input type="text" name="gov" id="gov" placeholder="government" value="Elsharqa" autocomplete="on" required>

                    </div>
                    <div>
                        <i class="fal fa-city"></i>
                        <input type="text" name="city" id="city" placeholder="city" value="Elsharqa" autocomplete="on" required>
                    </div>
                </div>
                <div class="input-container">
                    <i class="fal fa-hand-holding-usd"></i>
                    <select style="min-width: 210px;" name="status" id="status" required>
                        <option value="inland">inland</option>
                        <option value="outland">outland</option>
                    </select>
                </div>
                <div class="input-container">
                    <i class="far fa-lock"></i>
                    <input type="text" style="min-width: 210px;" id="Password" placeholder="password" name="Password" value="Herova@2024" minlength="8" maxlength="15" autocomplete="off" required>
                </div>
                <a class="button1" type="submit">update</a>
                <p>powered by <a href="herova.net" style="color:#0B8A00;">Herova</a></p>
        </div>
        </form>
    </div>
    </div>
    </div>
    <div class="balance-container hidden" id="toggle2">
        <i class="far fa-university"></i>
        <div class="balance-details">
            <div class="infor">
                <P>Bank Name:</P>
                <span>Bank ELbalaad</span>
            </div>
            <div class="infor">
                <P>Country:</P>
                <span>Saudi Arabia</span>
            </div>
            <div class="infor">
                <P>IBAN:</P>
                <span>5*** **** **** 4756</span>
            </div>
            <a class="button1" href="change_bank.php">Change my bank account</a>
            <p style="color:red;font-size: 14px;">*important note: any new account take about 2 days to verify it.</p>
            <h2>Your Balance:</h2>
            <p class="balance-no">800 000 USD</p>
            <div class="couponss">
                <div class="loyalty">
                    <i class="fal fa-hand-holding-usd"></i>
                    <p>loyalty points:<span id="loyaltyPoints">11000</span></p>
                </div>
                <div class="special" id="copyCode">
                    <a href="">8565EDA87</a>
                    <i class="fa-regular fa-copy"></i>
                </div>
            </div>
            <!-- Custom Popup -->
            <div id="customPopup" class="popupp" style="display: none;">
                <p>Copied to clipboard: <span id="copiedText"></span></p>
            </div>
            <div id="popupMessage" class="popupp" style="display: none;">
                <p>Copied to clipboard: <span id="copiedCouponText"></span></p>
            </div>

            <div class="active-coupons" id="activeCoupons">
                <h3>Active Coupons</h3>
            </div>

            <div id="couponPopup" class="popup">
                <div class="popup-content">
                    <span class="close">&times;</span>
                    <div class="couponss" style="justify-content: center;">
                        <div class="special" id="copyCode2">
                            <a href="#" id="couponCodeDisplay">8565EDA87</a>
                            <i class="fa-regular fa-copy" id="copyButton"></i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="coupons">
                <div>
                    <button class="button1" id="couponLink">Generate a one use coupon </button>
                    <a href="" id="rulesLink">loyalty points rules</a>
                </div>
                <div id="rulesPopup" class="popup">
                    <div class="popup-content">
                        <span class="close">&times;</span>
                        <h2>Loyalty Points Rules</h2>
                        <p>Earn loyalty points with every purchase and redeem them for exciting rewards! Here's how it works:</p>

                        <div class="rule">
                            <h3>1. Earning Points</h3>
                            <ul>
                                <li>For every $1 spent, you earn <strong>10 loyalty points</strong>.</li>
                                <li>Special promotions may offer bonus points on select products.</li>
                                <li>Points are credited to your account after the order is successfully delivered.</li>
                            </ul>
                        </div>

                        <div class="rule">
                            <h3>2. Redeeming Points</h3>
                            <ul>
                                <li><strong>100 points</strong> = $1 discount on your next purchase.</li>
                                <li>Points can be redeemed during checkout.</li>
                                <li>Minimum redemption amount is <strong>500 points</strong>.</li>
                            </ul>
                        </div>

                        <div class="rule">
                            <h3>3. Expiry of Points</h3>
                            <ul>
                                <li>Points expire after <strong>12 months</strong> from the date they are earned.</li>
                                <li>You will receive a reminder email before your points expire.</li>
                            </ul>
                        </div>

                        <div class="rule">
                            <h3>4. Other Rules</h3>
                            <ul>
                                <li>Points are non-transferable and can only be used by the account holder.</li>
                                <li>Points cannot be exchanged for cash.</li>
                                <li>In case of order cancellation, points earned for that order will be deducted.</li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
            <p style="color:red;font-size: 14px;">share it with your frinds to get +10 point / friend signed up</p>
            <p style="margin: 15px 0;">powered by <a href="herova.net" style="color:#0B8A00;">Herova</a></p>
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
    <script src="assets/js/account.js"></script>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Load saved coupons from localStorage when the page loads
    loadSavedCoupons();

    document.getElementById('copyCode2').addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default action of the link

        // Check if loyalty points are less than 10000
        const loyaltyPointsElement = document.getElementById('loyaltyPoints');
        let loyaltyPoints = parseInt(loyaltyPointsElement.textContent);

        if (loyaltyPoints < 10000) {
            
            alert('You need at least 10000 loyalty points to generate a coupon.');
            return; // Stop further execution
        }

        // Generate a unique coupon code
        const couponCode = generateCouponCode();

        // Update the coupon code display
        const couponCodeDisplay = document.getElementById('couponCodeDisplay');
        couponCodeDisplay.textContent = couponCode; // Update the displayed coupon code

        // Use the Clipboard API to copy the text
        navigator.clipboard.writeText(couponCode).then(function() {
            // Show the custom popup
            const popup = document.getElementById('popupMessage');
            const copiedText = document.getElementById('copiedCouponText');
            copiedText.textContent = couponCode; // Set the copied text in the popup

            popup.style.display = 'block'; // Show the popup

            // Hide the popup after 3 seconds
            setTimeout(() => {
                popup.style.display = 'none'; // Hide the popup
            }, 3000); // Popup stays visible for 3 seconds

            // Add the coupon to the active coupons section in a new div with the same class
            addCouponToActive(couponCode);

            // Deduct 10,000 loyalty points
            deductLoyaltyPoints(10000); // Deduct 10,000 points
        }).catch(function(err) {
            console.error('Failed to copy text: ', err);
        });
    });

    // Function to generate a unique coupon code
    function generateCouponCode() {
        const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
        let couponCode = '';
        for (let i = 0; i < 8; i++) {
            couponCode += characters.charAt(Math.floor(Math.random() * characters.length));
        }
        return couponCode;
    }

    // Function to add the coupon to the active coupons section in a new div with the same class
    function addCouponToActive(couponCode) {
        const activeCouponsDiv = document.getElementById('activeCoupons');

        // Create a new div for the coupon with the same class
        const couponDiv = document.createElement('div');
        couponDiv.className = 'special'; // Use the same class for all coupon divs
        couponDiv.textContent = couponCode; // Add the coupon code to the div

        // Add the new div to the active-coupons section
        activeCouponsDiv.appendChild(couponDiv);

        // Make the active-coupons div visible
        activeCouponsDiv.style.display = 'grid';
        activeCouponsDiv.style.gridTemplateColumns = 'repeat(auto-fit, minmax(200px, 1fr))';

        // Save the coupon to localStorage
        saveCouponToStorage(couponCode);
    }

    // Function to save a coupon to localStorage
    function saveCouponToStorage(couponCode) {
        let savedCoupons = JSON.parse(localStorage.getItem('savedCoupons')) || [];
        savedCoupons.push(couponCode); // Add the new coupon to the array
        localStorage.setItem('savedCoupons', JSON.stringify(savedCoupons)); // Save the updated array
    }

    // Function to load saved coupons from localStorage
    function loadSavedCoupons() {
        const savedCoupons = JSON.parse(localStorage.getItem('savedCoupons')) || [];
        const activeCouponsDiv = document.getElementById('activeCoupons');

        if (savedCoupons.length > 0) {
            // Make the active-coupons div visible
            activeCouponsDiv.style.display = 'grid';
            activeCouponsDiv.style.gridTemplateColumns = 'repeat(auto-fit, minmax(200px, 1fr))';

            // Add each saved coupon to the active-coupons section in a new div with the same class
            savedCoupons.forEach(couponCode => {
                const couponDiv = document.createElement('div');
                couponDiv.className = 'special'; // Use the same class for all coupon divs
                couponDiv.textContent = couponCode; // Add the coupon code to the div
                activeCouponsDiv.appendChild(couponDiv);
            });
        }
    }

    // Function to deduct loyalty points
    function deductLoyaltyPoints(points) {
        const loyaltyPointsElement = document.getElementById('loyaltyPoints');
        let loyaltyPoints = parseInt(loyaltyPointsElement.textContent);
        loyaltyPoints -= points; // Deduct the points
        loyaltyPointsElement.textContent = loyaltyPoints; // Update the displayed points
    }

    
});
</script>
    <?php include_once "footer.php"; ?>
</body>

</html>