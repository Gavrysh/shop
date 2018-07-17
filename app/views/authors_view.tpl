<div class="row justify-content-center">
    <?php foreach ($data as $key => $val) { ?>
    <div class="card" style="width: 18rem;">
        <img class="card-img-top" src="/img/author.jpg" alt="Card image cap">
        <div class="card-body">
            <h5 class="card-title"><?= $data[$key]['first_name'].' '.$data[$key]['last_name']; ?></h5>
            <p class="card-text"><?= $data[$key]['bio']; ?></p>
            <a href="/author/show/?id=<?= $data[$key]['id']; ?>" class="btn btn-primary">Подробнее</a>
        </div>
    </div>
    <?php } ?>
</div>