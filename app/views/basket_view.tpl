<!-- Main container -->
<div class="container">
    <div class="row">
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">img</th>
                <th scope="col">Найменування товару</th>
                <th scope="col">Ціна</th>
                <th scope="col">Кількість</th>
                <th scope="col">Знижка</th>
                <th scope="col">Сума</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <th scope="row">1</th>
                <td></td>
                <td>Mark</td>
                <td>120.55</td>
                <td>1</td>
                <td>0.00</td>
                <td>120.55</td>
            </tr>
            <tr>
                <th scope="row">2</th>
                <td></td>
                <td>Jacob</td>
                <td>120.55</td>
                <td>1</td>
                <td>0.00</td>
                <td>120.55</td>
            </tr>
            <tr>
                <th scope="row">3</th>
                <td></td>
                <td>Larry</td>
                <td>120.55</td>
                <td>1</td>
                <td>0.00</td>
                <td>120.55</td>
            </tr>
            </tbody>
        </table>
    </div>
    <div class="row">
        <div class="col">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Швидке замовлення</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Детальне замовлення</a>
                </li>
            </ul>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <p><label>Контактний номер телефону<br><input type="text" name="phone"></label></p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aliquam animi dolore, doloribus illum incidunt ipsam iure nam neque nesciunt nihil perferendis repellat sit! Ducimus enim et harum inventore ipsum molestias necessitatibus numquam tempore. Amet architecto assumenda doloremque ducimus esse excepturi explicabo illum, incidunt maxime, minus nemo neque pariatur unde?</p>
                    <form>
                        <input type="submit" name="submit" value="Підтвердити">
                    </form>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <form>
                        <p><label>Ім'я<br><input type="text" name="firstname"></label></p>
                        <p><label>Прізвище<br><input type="text" name="lastname"></label></p>
                        <p><label>Телефон<br><input type="text" name="phone"></label></p>
                        <p><label>email<br><input type="text" name="email"></label></p>
                        <p><label>Адреса доставки<br><input type="text" name="adress"></label></p>
                        <p><label>Служба доставки<br><input type="text" name="service"></label></p>
                        <p><label>Коментар<br><textarea name="comment"></textarea></label></p>
                        <input type="submit" name="submit" value="Підтвердити">
                    </form>
                </div>
            </div>
        </div>
        <div class="col">
            <h3>Інформація про оплату:</h3>
            <p>Ціна товарів</p>
            <p>Ціна доставки</p>
            <p>Знижка</p>
            <p>Загальна сума</p>
            <form>
                <input type="submit" value="Оформити замовлення">
            </form>
        </div>
    </div>
</div> <!-- End Main container -->