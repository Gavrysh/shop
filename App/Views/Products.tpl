<!-- Products -->
<div class="container">
    <div class="row justify-content-center">
        <?php foreach ($data as $key => $val) { ?>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="/img/book.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><?= $data[$key]['name']; ?></h5>
                        <p class="card-text"><?= $data[$key]['description']; ?></p>
                        <a href="/products/select/<?= $data[$key]['id']; ?>" class="btn btn-primary float-left">Купить</a>
                        <a href="/product/show/?id=<?= $data[$key]['id']; ?>" class="btn btn-primary float-right">Подробнее</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div> <!-- End Products -->