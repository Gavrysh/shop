<!-- form for login -->
<form action='' method='post'>
    <div class="form-group">
        <div class="errorMessage">
            <?php if(isset($data['email'])) { echo $data['email']; } ?>
        </div>
        <label for="exampleInputEmail1">Email адрес</label>
        <input type="email" name="email" value="<?php if(isset($_POST['email'])) { echo hs($_POST['email']); } ?>" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Введите свой email">
        <small id="emailHelp" class="form-text text-muted">Ваш email адрес не будет распространяться где-то еще.</small>
    </div>
    <div class="form-group">
        <div class="errorMessage">
            <?php if(isset($data['password'])) { echo $data['password']; } ?>
        </div>
        <label for="exampleInputPassword1">Пароль</label>
        <input type="password" name="password" value="<?php if(isset($_POST['password'])) { echo hs($_POST['password']); } ?>" class="form-control" id="exampleInputPassword1" placeholder="Введите пароль">
    </div>
    <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Запомнить меня</label>
    </div>
    <button type="submit" class="btn btn-primary" name="login">Подтвердить</button>
</form>
<!-- End form for login -->
