<?php
?>

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

<!-- Modal for login -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Вхід</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email адреса</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введіть email">
                        <small id="emailHelp" class="form-text text-muted">Ваша email адреса не буде росповсюдживатись десь ще.</small>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Пароль</label>
                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Введіть пароль">
                    </div>
                    <div class="form-group form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Запам'ятати мене</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Підтвердити</button>
                </form>
            </div>
        </div>
    </div>
</div> <!-- End Modal for login -->

<!-- Top navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <a class="navbar-brand" href="/"><img src="/img/logo_s.png"></a>
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="/">Головна<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/products">Каталог товарів</a>
            </li>
        </ul>
        <div class="my-2 my-lg-0 form-inline">
            <form class="form-inline">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" data-toggle="modal" data-target="#exampleModalCenter">Вхід</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="/basket">Корзина</a>
                </li>
            </ul>
        </div>
    </div>
</nav> <!-- End Top navigation -->

<!-- Main container -->
<div class="container">
    <div class="main-content">
        <?php require_once './app/views/'.$content_view; ?>
    </div>
</div> <!-- End Main container -->

<!-- Footer -->
<footer class="footer">
    <div class="container">
        <span class="footer-content-copyright">Copyright &copy; 2018 <span>|</span> <a href="#">Privacy Policy</a></span>
    </div>
</footer> <!-- End Footer -->
</body>
</html>
