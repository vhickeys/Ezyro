<!-- Main Header-->
<header class="main-header header-style-six">
    <div class="auto-container px-12">
        <!-- Main box -->
        <div class="main-box">
            <div class="logo-box">
                <div class="logo"><a href="index.php"><img src="assets/images/logo-2.png" alt="Ezyro Technology" title="Consultez"></a>
                </div>
            </div>
            <!--Nav Box-->
            <div class="nav-outer">
                <nav class="nav main-menu">
                    <ul class="navigation">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="about.php">About</a></li>
                        <li><a href="services.php">Services</a></li>
                        <li><a href="portfolio.php">Portfolio</a></li>
                        <li><a href="contact.php">Contact</a></li>
                    </ul>
                </nav>
                <!-- Main Menu End-->
            </div>
            <div class="outer-box">
                <div class="info-box">
                    <a class="btn-three" href="contact.php">Build with us</a>
                </div>
                <div class="mobile-nav-toggler d-block d-lg-none"><i class="icon lnr-icon-bars"></i></div>
                <!-- Mobile Nav toggler -->
            </div>
        </div>
        <!-- Mobile Menu  -->
        <div class="mobile-menu">
            <div class="menu-backdrop"></div>
            <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->
            <nav class="menu-box">
                <div class="upper-box">
                    <div class="nav-logo"><a href="index.php"><img src="assets/images/logo-light.png" alt="Ezyro Technology"></a></div>
                    <div class="close-btn"><i class="icon fa fa-times"></i></div>
                </div>
                <ul class="navigation clearfix">
                    <!--Keep This Empty / Menu will come through Javascript-->
                </ul>
                <ul class="contact-list-one">
                    <li>
                        <!-- Contact Info Box -->
                        <div class="contact-info-box">
                            <i class="icon lnr-icon-phone-handset"></i>
                            <span class="title">Call Now</span>
                            <a href="tel:<?= $webSetting['phone'] ?: '' ?>"><?= $webSetting['phone'] ?: '' ?></a>
                        </div>
                    </li>
                    <li>
                        <!-- Contact Info Box -->
                        <div class="contact-info-box">
                            <span class="icon lnr-icon-envelope1"></span>
                            <span class="title">Send Email</span>
                            <a href="mailto:<?= $webSetting['email'] ?: '' ?>"><span
                                    class="__cf_email__"><?= $webSetting['email'] ?: '' ?></span></a>
                        </div>
                    </li>
                    <li>
                        <!-- Contact Info Box -->
                        <div class="contact-info-box">
                            <span class="icon lnr-icon-clock"></span>
                            <span class="title">Hours</span>
                            24 / 7
                        </div>
                    </li>
                </ul>
                <ul class="social-links">
                    <li><a href="<?= $webSetting['facebook'] ?: '' ?>"><i class="fa-brands fa-facebook-f"></i></a></li>
                    <li><a href="<?= $webSetting['twitter'] ?: '' ?>"><i class="fa-solid fa-x"></i></a></li>
                    <li><a href="<?= $webSetting['instagram'] ?: '' ?>"><i class="fa-brands fa-instagram"></i></a></li>
                    <li><a href="<?= $webSetting['youtube'] ?: '' ?>"><i class="fa-brands fa-youtube"></i></a></li>
                </ul>
            </nav>
        </div>
        <!-- End Mobile Menu -->
        <!-- Header Search -->
        <div class="search-popup">
            <span class="search-back-drop"></span>
            <button class="close-search"><span class="fa fa-times"></span></button>
            <div class="search-inner">
                <form method="post" action="javascript:void(0)">
                    <div class="form-group">
                        <input type="search" name="search-field" value="" placeholder="Search..." required="">
                        <button type="submit"><i class="fa fa-search"></i></button>
                    </div>
                </form>
            </div>
        </div>
        <!-- End Header Search -->

        <!-- Sticky Header  -->
        <div class="sticky-header">
            <div class="auto-container">
                <div class="inner-container">
                    <!--Logo-->
                    <div class="logo">
                        <a href="index.php"><img src="assets/images/logo.png" alt="Ezyro Technology"></a>
                    </div>
                    <!--Right Col-->
                    <div class="nav-outer">
                        <!-- Main Menu -->
                        <nav class="main-menu">
                            <div class="navbar-collapse show collapse clearfix">
                                <ul class="navigation clearfix">
                                    <!--Keep This Empty / Menu will come through Javascript-->
                                </ul>
                            </div>
                        </nav><!-- Main Menu End-->
                        <!--Mobile Navigation Toggler-->
                        <div class="mobile-nav-toggler"><span class="icon lnr-icon-bars"></span></div>
                    </div>
                </div>
            </div>
        </div><!-- End Sticky Menu -->
    </div>
</header>
<!--End Main Header -->