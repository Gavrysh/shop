<div class="row">
    <div class="col-4">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="/img/<?= $data[0]['img']; ?>" alt="Card image cap">
            <div class="card-body">
                <p class="card-text"><?= $data[0]['first_name'].' '.$data[0]['last_name']; ?></p>
            </div>
        </div>
    </div>
    <div class="col-8">
        <h3>Биография</h3>
        <p><?= $data[0]['biography']; ?></p>
    </div>
</div>
<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="works-tab" data-toggle="tab" href="#works" role="tab" aria-controls="works" aria-selected="true">Работы автора</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Отзывы читателей</a>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <div class="tab-pane fade show active" id="works" role="tabpanel" aria-labelledby="works-tab">
        <?php
            foreach ($data as $key => $val) {
                echo '<h4>'.htmlspecialchars($data[$key]['name']).'</h4>';
                echo '<p>'.nl2br(htmlspecialchars($data[$key]['content'])).'</p>';
            }
        ?>
        <p>

        </p>
    </div>
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequuntur dignissimos ex ipsa magni nihil porro quis recusandae! A accusantium alias, aliquam atque doloremque eaque facere iste laboriosam magnam modi mollitia nobis numquam omnis quaerat quidem quo, quos sed tempore totam ut. Aspernatur beatae dolore labore libero molestiae sed. Adipisci amet cum delectus dicta, distinctio dolor dolores doloribus enim error esse eum facere, maxime neque nisi pariatur placeat quaerat quasi similique sit voluptas. Ab accusamus accusantium assumenda deleniti eius eligendi harum iure, labore minus mollitia nesciunt nobis obcaecati pariatur placeat quae quo recusandae repellat repellendus, saepe sapiente sequi tempora tenetur vel voluptates voluptatum. Accusamus assumenda autem et eveniet ipsum perspiciatis qui quisquam voluptatibus. Accusamus dolores ea fuga ipsum, iusto maxime numquam odio omnis quaerat ut. Ab aperiam asperiores aspernatur assumenda autem blanditiis commodi consequuntur cum deleniti doloremque doloribus eligendi enim est eveniet fuga fugiat fugit hic illo impedit in iste itaque iusto laborum non numquam obcaecati officia optio praesentium quisquam recusandae repellat sequi, sint, tempora ut vel voluptate voluptatibus! Accusantium, architecto at autem blanditiis dicta facere in, itaque minus nihil officiis quod sunt suscipit tempore vel voluptatum. Alias aperiam architecto aspernatur beatae dolor dolore doloribus earum esse ex illo illum neque nulla, quaerat quia ratione totam vel velit veniam? Ad asperiores deserunt dolore doloribus eaque fugit obcaecati recusandae rem repellat, sunt tempora, temporibus vel. Delectus eaque et necessitatibus, officia quam voluptates! Alias consectetur distinctio enim fuga maxime odio, porro quibusdam quo similique vel velit, voluptatum? Deleniti dicta ea harum labore maxime molestias porro quasi, reiciendis rerum sequi. Dolores, ipsum, porro? Aut illo ipsam nam provident quod soluta tempora vel voluptates! Ad animi asperiores blanditiis consectetur cupiditate deleniti, deserunt dolores dolorum ducimus eius error harum hic id incidunt laborum molestiae neque numquam optio possimus quae reiciendis rerum tempora, tempore ut vero voluptatem.</div>
</div>