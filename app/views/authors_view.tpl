<div class="row justify-content-center">
    <?php foreach ($data as $key => $val) { ?>
    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="/img/author.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"><?= $data[$key]['author']; ?></h5>
            <p class="card-text"><?= $data[$key]['bio']; ?></p>
            <a href="/author/show/<?= $key; ?>" class="btn btn-primary">Подробнее</a>
        </div>
    </div>
    <?php } ?>
</div>