<?php

$title = 'Portfolio';
include_once 'components/head.php';
include_once 'components/header.php';

?>

<!-- Start main-content -->
<section class="page-title"
    style="background-image: url(assets/images/about/ezyro-about-6.jpg); padding-top: 15rem !important;">
    <div class="auto-container">
        <div class="title-outer">
            <ul class="page-breadcrumb">
                <li><a href="index.php">Home</a></li>
                <li>Portfolio</li>
            </ul>
            <h1 class="title">Portfolio</h1>
        </div>
    </div>
</section>
<!-- end main-content -->

<!-- News Section -->
<section class="blog-section pt-120 pb-90">
    <div class="auto-container">
        <div class="row g-4">

            <?php if ($allPortfolios != []): ?>

                <?php foreach ($allPortfolios as $allPortfolio): ?>

                    <?php $getCategoryById = $category->getCategoryById('categories', $allPortfolio['category_id']); ?>

                    <div class="col-md-6 col-xl-4 wow fadeInLeft" data-wow-delay="00ms" data-wow-duration="1500ms">
                        <div class="blog-block-two mb-30">
                            <div class="inner-box">
                                <div class="image-box">
                                    <figure class="image">
                                        <img src="assets/images/portfolios/<?= $allPortfolio['image'] ?? '' ?>" alt="<?= $allPortfolio['title'] ?? '' ?> | Ezyro Technology">
                                        <span class="tag"><?= $getCategoryById['name'] ?></span>
                                    </figure>
                                </div>
                                <div class="content-box">
                                    <h4 class="title"><a href="portfolio-details.php?portId=<?= $allPortfolio['slug'] ?? '' ?>"><?= $allPortfolio['title'] ?? '' ?></a></h4>
                                </div>
                            </div>
                        </div>
                    </div>

                <?php endforeach; ?>

            <?php else: ?>
                <div class="alert alert-info ps-5">
                    No Portfolio at the moment, please check again later!
                </div>
            <?php endif; ?>

        </div>
    </div>
</section>
<!--End News Section -->

<?php
include_once 'components/footer.php';
?>