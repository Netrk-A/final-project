<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bids</title>
    <link href='https://fonts.googleapis.com/css?family=Cabin' rel='stylesheet'>

    <!-- icon -->
    <link rel="icon" href="assets/img/logo.png">

    <!-- fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <!-- font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <!-- Swiper.js CSS CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.0.2/swiper-bundle.min.css">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/9.0.2/swiper-bundle.min.js"></script>

    <!-- css -->
    <link rel="stylesheet" href="assets/css/components/swiper.css">
    <link rel="stylesheet" href="assets/css/components/products.css">
    <link rel="stylesheet" href="assets/css/bids.css">
    <link rel="stylesheet" href="assets/css/master.css">

    <!-- JS -->
    <script defer src="assets/js/components/swiper.js"></script>
    <!-- <script defer src="assets/js/components/scroll.js"></script> -->
</head>

<body>
    <!-- header -->
    <?php include "header.php"?>

    <!-- poster -->
    <div class="poster ">
        <img src="assets/img/product.png" alt="product" loading="lazy">
        <div class="content">
            <h2 class="title">The Luxe Houndstooth Lounge Chair</h2>
            <div class="description">
                <span class="fixed">Description : </span>
                <span class="text"> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                    incididunt
                    ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
                    nisi ut aliquip ex ea commodo consequat.</span>
            </div>
            <div class="end_date">
                <span class="fixed">Auction End Date : </span>
                <span class="text">November 1, 2024</span>
            </div>
            <div class="current_price">
                <span class="fixed">Current bid : </span>
                <span class="text">$2000</span>
            </div>
            <div class="bidders_number">
                *<span class="text">15</span>
                <span class="fixed">people rolled in</span>
            </div>
            <a href="#" class="primary-btn enroll">Enroll Now</a>
        </div>

    </div>

    <!-- top bidders -->
    <div class="top_bidders">
        <h2>Top bidders</h2>
        <div class="bidders">
            <div class="top_bidder" data-rank='1'>
                <p class="rank">1.</p>
                <img src="assets/img/people/person1.png" alt="" class="pfp" loading="lazy">
                <p class="name">Amira Gad</p>
                <p class="bid_price">$2000</p>
            </div>
            <div class="top_bidder" data-rank='2'>
                <p class="rank">2.</p>
                <img src="assets/img/people/person2.png" alt="" class="pfp" loading="lazy">
                <p class="name">Samy Morad</p>
                <p class="bid_price">$1700</p>
            </div>
            <div class="top_bidder" data-rank='3'>
                <p class="rank">3.</p>
                <img src="assets/img/people/person3.png" alt="" class="pfp" loading="lazy">
                <p class="name">Ali Morgan</p>
                <p class="bid_price">$1500</p>
            </div>
        </div>
    </div>

    <!-- recommended bids -->
    <div class="astron-container recommended">
        <div class="swiper products-container">
            <h2 class="swiper-title">Recommended Bids</h2>
            <div class="swiper-wrapper recommended-bids ">
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date :
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid :
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date :
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid :
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
                <div class="swiper-slide product">
                    <img src="assets/img/product.png" alt="product" loading="lazy">
                    <div class="details">
                        <p class="title">The Luxe Houndstooth Lounge Chair </p>
                        <p class="end-date">Auction End Date:
                            <span class="end-date">November 1, 2024</span>
                        </p>
                        <p class="last-price">Now Bid:
                            <span class="last-price"> $250</span>
                        </p>
                    </div>
                    <a href="#" class="primary-btn enroll">Enroll Now</a>
                </div>
            </div>
            <!-- Navigation Buttons -->
        </div>
        <div class="swiper-navigation">
            <div class="button-prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </div>
            <div class="button-next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </div>

        </div>
    </div>

    <!-- footer -->
    <?php  include "footer.php"?>
</body>