<!-- Products -->
<div class="container">
    <div class="row justify-content-center">
        <?php foreach ($data as $key => $val) { ?>
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="/img/<?= $data[$key]['img']; ?>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"><?= htmlspecialchars($data[$key]['name']); ?></h5>
                        <p class="card-text"><?= htmlspecialchars(mb_substr($data[$key]['content'], 0, 150)).'...'; ?></p>
                        <a href="/Products/SelectProducts/?id=<?= $data[$key]['id']; ?>" class="btn btn-primary float-left">Купить</a>
                        <a href="/Product/Show/?id=<?= $data[$key]['id']; ?>" class="btn btn-primary float-right">Подробнее</a>
                    </div>
                </div>
            </div>
        <?php } ?>
    </div>
</div> <!-- End Products -->