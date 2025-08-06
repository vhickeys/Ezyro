<?php
require_once 'webadmin/classes/functions.php';
$webSetting = $settings->getSettings('1', '0');
$getAboutMe = $aboutMe->getAboutMe();
$categories = $category->getCategoriesByStatus("categories", "0");
$allPortfolios = $portfolio->getAllPortfolios();
$allProducts = $product->getAllProducts();
$featuredProjects = $portfolio->getPortfolioLimit("6");
$testimonials = $testimonial->getTestimonialByStatus("6");
$blogPosts = $blog->getBlogPosts("3");

$portfolio_details = $portfolio->getPortfolioBySlugStatus($_GET['portId'] ?? '');
$product_details = $product->getProductBySlugStatus($_GET['prodId'] ?? '');
$blog_post_details = $blog->getPostBySlugStatus($_GET['read'] ?? '');

if ($portfolio_details != [] || $product_details != [] || $blog_post_details != []) {
    if (isset($portfolio_details['meta_title']) && isset($portfolio_details['meta_keywords']) && isset($portfolio_details['meta_description'])) {
        $title = $portfolio_details['meta_title'];
        $keywords = $portfolio_details['meta_keywords'];
        $meta_description = $portfolio_details['meta_description'];
    } else if (isset($product_details['meta_title']) && isset($product_details['meta_keywords']) && isset($product_details['meta_description'])) {
        $title = $product_details['meta_title'];
        $keywords = $product_details['meta_keywords'];
        $meta_description = $product_details['meta_description'];
    } else if (isset($blog_post_details['meta_title']) && isset($blog_post_details['meta_keywords']) && isset($blog_post_details['meta_description'])) {
        $title = $blog_post_details['meta_title'];
        $keywords = $blog_post_details['meta_keywords'];
        $meta_description = $blog_post_details['meta_description'];
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title><?= $title ?? 'Ezyro Technology' ?> - Ezyro Technology</title>
    <!-- Stylesheets -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/flatpickr.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css">

    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
    <!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <div class="page-wrapper">

        <!-- Preloader -->
        <div class="preloader"></div>