<?php
$message = '';

if (!empty($_POST)) {
    $form = new ValidateForm();
    if ($form->getRezalt()) {
        $BD = new BD();
        $UserInform = new UserInform;
        $data = array(
            'username' => $_POST['username'],
            'category' => $_POST['category'],
            'email' => $_POST['email'],
            'homepage' => $_POST['homepage'],
            'message' => $_POST['text'],
            'ip_user' => $UserInform->getIpUser(),
            'user_agent' => $UserInform->getUserAgent(),
        );
        $sql = "INSERT INTO messages SET ?u";
        $BD->query($sql,  $data);
        var_dump($BD->lastQuery());
        unset($_POST);
    } else {
        $styleMes = 'alert alert-danger';
        $message = $form->getMessage();
    }
}
?>
<h1>Оставить комментарий!</h1>
<form class="form-horizontal" method="post">
    <div class="form-group">
        <label for="username" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">User Name</label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <input name="username" type="text" class="form-control" id="username" placeholder="User Name"
                   pattern="^[a-zA-Z0-9]+$" title="Только цифры и буквы латинского алфавита"
                   value="<?php echo $_POST['username'] ?>" required>
        </div>
    </div>
    <div class="form-group">
        <label for="category" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Category</label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <select name="category" id="category" size="3" class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
                <option value="test">test</option>
                <option value="test">test</option>
                <option value="test">test</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Email</label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <input name="email" type="email" class="form-control" id="email" placeholder="Email"
                   value="<?php echo $_POST['email'] ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="homepage" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Homepage</label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <input name="homepage" type="url" class="form-control" id="homepage" placeholder="Homepage"
                   value="<?php echo $_POST['homepage'] ?>">
        </div>
    </div>
    <div class="form-group">
        <label for="text" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Текст</label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <textarea name="text" id="text" class="form-control" rows="3"><?php echo $_POST['text'] ?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label for="captcha" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">
            <img src="/imgcaptcha.php" id="captcha">

        </label>
        <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
            <input name="captcha" type="number" class="form-control" id="captcha" placeholder="Введите цифры"
                   pattern="/[0-9]{5}/">
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-4 col-xs-4 col-md-4 col-lg-4 col-xs-offset-4 col-md-offset-4 col-lg-offset-4">
            <button type="submit" class="btn btn-default">Send</button>
        </div>
    </div>
</form>
<div class="<?php echo $styleMes; ?> col-sm-offset-3 col-sm-5 col-xs-5 col-md-5 col-lg-5 col-xs-offset-3 col-md-offset-3 col-lg-offset-3">
    <strong><?php echo $message; ?></strong>
</div>

