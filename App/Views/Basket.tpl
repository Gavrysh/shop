<!-- Main container -->
<div class="container">
    <div class="row">
        <?php
            if (gettype($data) == 'boolean') { ?>
                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">Корзина пуста!</h4>
                    <p>Для добавления товаров в корзину - необходимо перейти на страницу с товарами. Добавленный товар можно будет заказать на этой странице.</p>
                    <hr>
                    <p class="mb-0">Удачного выбора.</p>
                </div>
        <?php
            } else { ?>
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">img</th>
                        <th scope="col">Наименование товара</th>
                        <th scope="col">Цена</th>
                        <th scope="col">Количество</th>
                        <th scope="col">Скидка</th>
                        <th scope="col">Сумма</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                        foreach ($data as $key => $value): ?>
                            <tr>
                                <th scope="row"><?= $key+1; ?></th>
                                <td></td>
                                <td><?= $value['name']; ?></td>
                                <td><?= $value['price']; ?></td>
                                <td><?= $value['amount']; ?></td>
                                <td>0.00</td>
                                <td><?= $value['sum']; ?></td>
                            </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
                <div>
                    <form method="post" action="/Basket/ClearBasket">
                        <input type="submit" class="btnClearBasket" name="clearBasket" value="Очистить корзину">
                    </form>
                </div>
                <div>
                    <form method="post" action="/Basket/RecountBasket">
                        <input type="submit" class="btnRecountBasket" name="RecountBasket" value="Пересчитать товары">
                    </form>
                </div>
            <?php } ?>
    </div>
    <div class="row">
        <div class="col">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Быстрый заказ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Детальный заказ</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <p><label>Контактный номер телефона<br><input type="text" name="phone"></label></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aliquam animi dolore, doloribus illum incidunt ipsam iure nam neque nesciunt nihil perferendis repellat sit! Ducimus enim et harum inventore ipsum molestias necessitatibus numquam tempore. Amet architecto assumenda doloremque ducimus esse excepturi explicabo illum, incidunt maxime, minus nemo neque pariatur unde?</p>
                    <form action="" method="post">
                        <input type="submit" name="submit" value="Подтвердить">
                    </form>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <form action="" method="post">
                        <p><label>Имя<br><input type="text" name="firstname"></label></p>
                        <p><label>Фамилия<br><input type="text" name="lastname"></label></p>
                        <p><label>Телефон<br><input type="text" name="phone"></label></p>
                        <p><label>email<br><input type="text" name="email"></label></p>
                        <p><label>Адрес доставки<br><input type="text" name="adress"></label></p>
                        <p><label>Служба доставки<br><input type="text" name="service"></label></p>
                        <p><label>Комментарий<br><textarea name="comment"></textarea></label></p>
                        <input type="submit" name="submit" value="Подтвердить">
                    </form>
                </div>
            </div>
        </div>
        <div class="col">
            <h3>Информация про оплату:</h3>
            <p>Цена товаров</p>
            <p>Цена доставки</p>
            <p>Скидка</p>
            <p>Общая сумма</p>
            <form action="" method="post">
                <input type="submit" value="Оформить заказ">
            </form>
        </div>
    </div>
</div> <!-- End Main container -->