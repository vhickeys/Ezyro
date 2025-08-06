<?php

$title = 'Portfolio';
include_once 'components/head.php';

if (!isset($_GET['portId']) || empty($_GET['portId']) || ($portfolio->getPortfolioBySlugStatus($_GET['portId']) == [])) {
    echo "<script>window.history.back()</script>";
}

include_once 'components/header.php';

?>

<!-- Start main-content -->
<section class="page-title"
    style="background-image: url(assets/images/portfolios/<?= $portfolio_details['image'] ?>); padding-top: 15rem !important;">
    <div class="auto-container">
        <div class="title-outer">
            <ul class="page-breadcrumb">
                <li><a href="index.php">Home</a></li>
                <li><a href="portfolio.php">Portfolio</a></li>
                <li><?= $portfolio_details['title'] ?? '' ?></li>
            </ul>
            <h1 class="title"><?= $portfolio_details['title'] ?? '' ?></h1>
        </div>
    </div>
</section>
<!-- end main-content -->

<!--Project Details Start-->
<section class="project-details pt-120 pb-70">
    <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 mb-5 mb-lg-0">
                <div class="sec-title mb-40">
                    <h6 class="sub-title wow fadeInUp bg-transparent ps-0" data-wow-delay="00ms"
                        data-wow-duration="1500ms">About The Project</h6>
                    <h2 class="title mb-30 wow splt-txt" data-splitting><?= $portfolio_details['caption'] ?? '' ?></h2>
                    <p class="text wow fadeInUp" data-wow-delay="200ms" data-wow-duration="1500ms">
                        <?= $portfolio_details['description'] ?? '' ?></p>
                </div>
            </div>
            <div class="col-xl-3 offset-xl-1 col-lg-4">
                <div class="project-details__content-right mt-0">
                    <div class="project-details__details-box rounded-0">
                        <ul class="list-unstyled project-details__details-list">
                            <li>
                                <h4 class="project-details__name mb-2">Clients</h4>
                                <p class="project-details__client"><?= $portfolio_details['client'] ?? '' ?></p>
                            </li>
                            <li>
                                <h4 class="project-details__name mb-2">Project Type</h4>
                                <p class="project-details__client"><?= $portfolio_details['services'] ?? '' ?></p>
                            </li>
                            <li>
                                <h4 class="project-details__name mb-2">Duration</h4>
                                <p class="project-details__client"><?= $portfolio_details['duration'] ?? '' ?></p>
                            </li>
                            <li>
                                <h4 class="project-details__name mb-2">Project Start Date</h4>
                                <p class="project-details__client">
                                    <?= date("d M, Y", strtotime($portfolio_details['date'])) ?></p>
                            </li>
                            <li>
                                <h4 class="project-details__name mb-2">Website</h4>
                                <p class="project-details__client"><a
                                        href="<?= $portfolio_details['project_url'] ?? '' ?>" target="_blank">Live
                                        preview</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row mb-5 mb-lg-0">
            <div class="col-lg-4 col-md-6">
                <div class="project-details__top mt-5">
                    <div class="project-details__img"> <img class="rounded-0"
                            src="assets/images/portfolios/<?= $portfolio_details['image'] ?>" alt="<?= $portfolio_details['caption'] ?? '' ?> | Ezyro Technology"> </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-6">
                <div class="project-details__top mt-5">
                    <div class="project-details__img"> <img class="rounded-0"
                            src="assets/images/portfolios/<?= $portfolio_details['image'] ?>" alt="<?= $portfolio_details['caption'] ?? '' ?> | Ezyro Technology"> </div>
                </div>
            </div>
        </div>
        <hr class="mt-4 mb-5 mb-lg-0">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="sec-title mb-40">
                    <h2 class="title mb-30 wow splt-txt" data-splitting>Related Projects</h2>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="project-details__top mt-lg-5">
                    <div class="text mb-40">We deliver nothing less than world-class results. See our other projects related to this project</div>
                </div>
            </div>
        </div>
        <div class="row">
            <?php
            $relatedPortfolios = array_slice($portfolio->getRelatedPortfolio($portfolio_details['category_id'] ?? '', $portfolio_details['id'] ?? ''), 0, 2);
            ?>
            <?php if ($relatedPortfolios != []): ?>

                <?php foreach ($relatedPortfolios as $relatedPortfolio): ?>

                    <div class="col-md-6">
                        <div class="project-details__top mt-5">
                            <div class="project-details__img"> <img class="rounded-0"
                                    src="assets/images/portfolios/<?= $relatedPortfolio['image'] ?? '' ?>" alt="<?= $relatedPortfolio['title'] ?? '' ?> | Ezyro Technology"> </div>
                        </div>
                    </div>

                <?php endforeach; ?>

            <?php else: ?>
                <div class="alert alert-info ps-5">
                    No Portfolio for this category at the moment, please check again later!
                </div>
            <?php endif; ?>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="project-details__pagination-box">
                    <ul class="project-details__pagination list-unstyled">
                        <?php if ($relatedPortfolios != []): ?>

                            <?php foreach ($relatedPortfolios as $relatedPortfolio): ?>

                                <li class="next text-start">
                                    <h4 class="title"> <a href="portfolio-details.php?portId=<?= $relatedPortfolio['slug'] ?? '' ?>"><?= $relatedPortfolio['title'] ?? '' ?></a> </h4>
                                </li>

                            <?php endforeach; ?>

                        <?php else: ?>
                            <div class="alert alert-info ps-5">
                                No Portfolio for this category at the moment, please check again later!
                            </div>
                        <?php endif; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Project Details End-->

<?php
include_once 'components/footer.php';
?>