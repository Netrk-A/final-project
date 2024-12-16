<head>
    <!-- css -->
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/components/header.css">

    <!-- JS -->
    <script defer type='module' src="assets/js/components/header.js"></script>
    <script defer src="assets/js/components/theme.js"></script>
</head>

<div class="headers font-montserrat">
    <!-- main header -->
    <header class="header">
        <img src="assets/img/logo.png" class="logo" loading="lazy">
        <div class="actions">
            <button class="login-btn primary-btn" data-href='login.php'>login</button>
            <div class="cart">
                <i class="fas fa-shopping-cart cart-icon"></i>
            </div>

            <label class="dark-mode-toggle">
                <input type="checkbox" id="dark-mode-switch">
                <span class="slider">
                    <i class="fas fa-moon " style="color: white;"></i>
                    <i class="fas fa-sun " style="color: #f39c12;"></i>
                </span>
            </label>
        </div>
        <div id="menu">
            <i class="fa-solid fa-bars fa-2x"></i>
        </div>
        <nav class="navbar">
            <a class="nav-item" href="index.php">Home</a>
            <a class="nav-item" href="footer.php">Categories</a>
            <a class="nav-item" href="sliders.php" class="active">Bids</a>
            <a class="nav-item" href="test.php">About us</a>
            <a class="nav-item" href="#">Contact us</a>
        </nav>
        <div class="nav-overlay"></div>
    </header>
    <div class="header-conserver"></div>

    <!-- bottom header -->
    <div class="bottom-nav">
        <a href="index.php" class="home nav-item">
            <div>
                <i class="fa fa-home fa-2x" aria-hidden="true"></i>
            </div>
            <p>Home</p>
        </a>

        <a href="sliders.php" class="cart nav-item">
            <div>
                <i class="fa-solid fa-cart-shopping fa-2x"></i>
            </div>
            <p>My Bids</p>
        </a>

        <a href="footer.php" class="notifications nav-item">
            <div>
                <i class="fa-regular fa-bell fa-2x"></i>
            </div>
            <p>alerts</p>
        </a>

        <a href='login.php' class="profile nav-item">
            <div>
                <i class="fa-regular fa-user fa-2x"></i>
            </div>
            <p>profile</p>
        </a>
    </div>

    <!-- news -->
    <div class="news">
        <div class="news-logo">
            <img src="assets/img/news-arrow.png" alt="logo-tv" loading="lazy">
            <p class="news-word">News</p>
        </div>
        <div class="news-slide marquee">
            <a class="news-content"></a>
        </div>
    </div>
</div>