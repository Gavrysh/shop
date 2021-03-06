<!-- Main container -->
<div class="container-fluid">
    <div class="row">
        <div class="col-4">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="/img/<?= $data[0]['img']; ?>" alt="Card image cap">
                <div class="card-body">
                    <h4 class="card-title"><?= htmlspecialchars($data[0]['name']); ?></h4>
                    <p class="card-text">Количество страниц - <?= $data[0]['pages']; ?> стр.</p>
                    <p class="card-text">Год издания - <?= $data[0]['publication']; ?> г.</p>
                    <p class="card-text">Цена - <?= $data[0]['price']; ?> грн.</p>
                    <a href="/Product/SelectProduct/?id=<?= $_REQUEST['id']; ?>" class="btn btn-primary float-left">Купить</a>
                </div>
            </div>
        </div>
        <div class="col-8">
            <h3>Краткое содержание книги</h3>
            <p><?= nl2br(htmlspecialchars($data[0]['content'])); ?></p>
        </div>
    </div>
    <div class="row">
        <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Автор</a>
                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Отзывы</a>
                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Предложения</a>
            </div>
        </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <p>
                    <?php
                        foreach ($data as $key => $val) {
                            echo '<h4>'.htmlspecialchars($data[$key]['first_name'].' '.$data[$key]['last_name']).'</h4>';
                            echo '<p>'.nl2br(htmlspecialchars($data[$key]['biography'])).'</p>';
                        }
                    ?>
                </p>
            </div>
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium atque eaque facilis inventore nihil, perspiciatis quia, quis repellat sequi similique veniam vitae voluptatum? Aliquam corporis doloremque ex magnam totam, veritatis! Ad animi asperiores atque dicta distinctio ducimus, error impedit iste, iure laudantium maiores molestiae nemo nostrum, quia quibusdam repudiandae sint tempora. Ab error nesciunt sint. Alias aperiam assumenda beatae blanditiis corporis debitis dicta dolor ea eius eligendi eos laboriosam modi nobis nulla officia quam quasi quod, rem sapiente ut. Atque consequuntur dignissimos iste minima odio quae sapiente. Alias aliquam autem cum cupiditate excepturi facere, labore officia placeat quae, quia sed.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aut cumque dolor eius eveniet facere fuga iure iusto minima minus nam necessitatibus nulla pariatur possimus quae quidem quo recusandae sapiente soluta suscipit tempora vitae, voluptate voluptatibus? Dicta dolore dolorum exercitationem explicabo facere optio porro quae quaerat sapiente voluptate. Aperiam, nesciunt?</p>
            </div>
            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium atque eaque facilis inventore nihil, perspiciatis quia, quis repellat sequi similique veniam vitae voluptatum? Aliquam corporis doloremque ex magnam totam, veritatis! Ad animi asperiores atque dicta distinctio ducimus, error impedit iste, iure laudantium maiores molestiae nemo nostrum, quia quibusdam repudiandae sint tempora. Ab error nesciunt sint. Alias aperiam assumenda beatae blanditiis corporis debitis dicta dolor ea eius eligendi eos laboriosam modi nobis nulla officia quam quasi quod, rem sapiente ut. Atque consequuntur dignissimos iste minima odio quae sapiente. Alias aliquam autem cum cupiditate excepturi facere, labore officia placeat quae, quia sed.<br>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus adipisci asperiores atque consequatur deleniti, dolores ducimus error expedita facilis fugiat illum iste itaque laboriosam minus molestiae molestias nesciunt officia pariatur perferendis quia repellat rerum sequi vero. Aperiam assumenda commodi consectetur cupiditate dignissimos, ex iusto nobis quae quisquam repudiandae sequi sint!</p>
            </div>
        </div>
    </div>
</div> <!-- End Main container -->