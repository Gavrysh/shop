<div class="row">
    <div class="col">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="/img/author.jpg" alt="Card image cap">
            <div class="card-body">
                <p class="card-text"><?= $data[0]['first_name'].' '.$data[0]['last_name']; ?></p>
            </div>
        </div>
    </div>
    <div class="col">
        <h3>Биография</h3>
        <p><?= $data[0]['biography']; ?></p>
    </div>
</div>
<h3>Отзывы читателей</h3>
<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="works-tab" data-toggle="tab" href="#works" role="tab" aria-controls="works" aria-selected="true">Работы</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="works" role="tabpanel" aria-labelledby="works-tab">
        <h5>Работы автора:</h5>
        <?php
            foreach ($data as $key => $val) {
                echo '<h6>'.$data[$key]['name'].'</h6>';
                echo '<p>'.$data[$key]['content'].'</p>';
            }
        ?>
        <p>

        </p>
    </div>
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">...</div>
    <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">...</div>
</div>