<!doctype html>
<html lang="en">
    <header>
        <title>Internet магазин книжок, головна</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/css/bootstrap.min.css">
        <link rel="stylesheet" href="/css/style.css">
        <script src="/js/jquery-3.3.1.slim.min.js"></script>
        <script src="/js/popper.min.js"></script>
        <script src="/js/bootstrap.min.js"></script>
    </header>
    <body>

        <!-- Header content -->
        <?php require_once './app/views/header_view.tpl'; ?>
        <!-- End Header content -->

        <!-- Main container -->
        <div class="container">
            <div class="main-content">
                <?php require_once './app/views/'.$content_view; ?>
            </div>
        </div>
        <!-- End Main container -->

        <!-- Footer content -->
        <?php require_once './app/views/footer_view.tpl'; ?>
        <!-- End Footer content -->

    </body>
</html>