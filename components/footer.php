<!-- Footer area start here -->
<footer class="main-footer footer-style-one">
    <div class="outer-box">

        <div class="footer-left">
            <div class="logo">
                <a href="index.php"><img src="assets/images/logo-light.png" alt="Logo"></a>
            </div>
            <button class="back-top-btn mobile-nav-toggler">
                <svg width="19" height="19" viewBox="0 0 19 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <circle cx="1.5" cy="1.5" r="1.5" fill="white" />
                    <circle cx="1.5" cy="9.5" r="1.5" fill="white" />
                    <circle cx="1.5" cy="17.5" r="1.5" fill="white" />
                    <circle cx="9.5" cy="1.5" r="1.5" fill="white" />
                    <circle cx="9.5" cy="9.5" r="1.5" fill="white" />
                    <circle cx="9.5" cy="17.5" r="1.5" fill="white" />
                    <circle cx="17.5" cy="1.5" r="1.5" fill="white" />
                    <circle cx="17.5" cy="9.5" r="1.5" fill="white" />
                    <circle cx="17.5" cy="17.5" r="1.5" fill="white" />
                </svg>
            </button>
        </div>

        <div class="row g-0 w-100">
            <div class="col-xl-12 left-column order-2 order-xl-1">

                <div class="footer-top">
                    <div class="row g-4">
                        <div class="col-lg-4">
                            <div class="info-item">
                                <ul>
                                    <li><i class="fa-sharp fa-solid fa-phone"></i></li>
                                    <li>
                                        <span>Call Us:</span>
                                        <h5 class="title"><?= $webSetting['phone'] ?: '' ?></h5>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="info-item">
                                <ul>
                                    <li><i class="fa-sharp fa-solid fa-envelope"></i></li>
                                    <li>
                                        <span>Email Us:</span>
                                        <h5 class="title"><a
                                                href="mailto:<?= $webSetting['email'] ?: '' ?>"
                                                class="__cf_email__"><?= $webSetting['email'] ?: '' ?></a>
                                        </h5>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="info-item">
                                <ul>
                                    <li><i class="fa-sharp fa-solid fa-location-dot"></i></li>
                                    <li>
                                        <span>Location:</span>
                                        <h5 class="title"><?= $webSetting['office_address'] ?: '' ?></h5>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="widgets-section">

                    <div class="row g-4">
                        <div class="col-lg-4 footer-column">
                            <div class="footer-widget links-widget">
                                <h4 class="widget-title">Services</h4>
                                <div class="widget-content">
                                    <ul class="user-links">
                                        <li><a href="services.php">Web Development</a></li>
                                        <li><a href="services.php">Branding & Identity</a></li>
                                        <li><a href="services.php">Mobile App Development</a></li>
                                        <li><a href="services.php">Software Development</a></li>
                                        <li><a href="services.php">E-commerce Solutions</a></li>
                                        <li><a href="services.php">Tech Support & Maintenance</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 footer-column">
                            <div class="footer-widget links-widget">
                                <h4 class="widget-title">Quick Links</h4>
                                <div class="widget-content">
                                    <ul class="user-links">
                                        <li><a href="index.php">Home</a></li>
                                        <li><a href="about.php">About</a></li>
                                        <li><a href="services.php">Services</a></li>
                                        <li><a href="portfolio.php">Portfolio</a></li>
                                        <li><a href="contact.php">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 footer-column">
                            <div class="footer-widget links-widget">
                                <ul class="footer-nav">
                                    <li><a href="<?= $webSetting['facebook'] ?: '' ?>"><i class="fa-brands fa-facebook-f"></i></a></li>
                                    <li><a href="<?= $webSetting['twitter'] ?: '' ?>"><i class="fa-solid fa-x"></i></a></li>
                                    <li><a href="<?= $webSetting['instagram'] ?: '' ?>"><i class="fa-brands fa-instagram"></i></a></li>
                                    <li><a href="<?= $webSetting['youtube'] ?: '' ?>"><i class="fa-brands fa-youtube"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="footer-bottom">
                    <p class="copyright-text">© Copyright © <?= date('Y') ?>. All Right by <a href="index.php">Ezyro Technology</a></p>
                </div>

            </div>
        </div>


    </div>
</footer>
<!-- Footer area end here -->

</div><!-- End Page Wrapper -->

<script src="assets/js/jquery.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/slick-animation.min.js"></script>
<script src="assets/js/jquery.fancybox.js"></script>
<script src="assets/js/wow.js"></script>
<script src="assets/js/appear.js"></script>
<script src="assets/js/mixitup.js"></script>
<script src="assets/js/flatpickr.js"></script>
<script src="assets/js/swiper.min.js"></script>
<script src="assets/js/gsap.min.js"></script>
<script src="assets/js/ScrollTrigger.min.js"></script>
<script src="assets/js/SplitText.min.js"></script>
<script src="assets/js/nice-select.min.js"></script>
<script src="assets/js/knob.js"></script>
<script src="assets/js/parallax.js"></script>
<script src="assets/js/vanilla-tilt.js"></script>
<script src="assets/js/splitting.js"></script>
<script src="assets/js/splitType.js"></script>
<script src="assets/js/script-gsap.js"></script>
<script src="assets/js/script.js"></script>
</body>

</html>