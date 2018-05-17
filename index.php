<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 16.05.2018
 * Time: 16:51
 */
spl_autoload_register(function ($class_name) {
    include 'app/' . $class_name . '.php';
});
$captcha = new captcha();
$code = $captcha->getSession('code');
$captcha_img = 'img/' . $captcha->getSession('code') . '.jpg';
if (!empty($_POST)) {
    unlink($captcha_img);
}
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Гостевая книга</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container-fluid">
    <h1>Hello, world!</h1>
    <form class="form-horizontal">
        <div class="form-group">
            <label for="UserName" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">User Name</label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <input type="text" class="form-control" id="UserName" placeholder="User Name" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Category" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Category</label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <select id="Category" size="3" required class="col-sm-12 col-xs-12 col-md-12 col-lg-12">
                    <option value="test">test</option>
                    <option value="test">test</option>
                    <option value="test">test</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="Email" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Email</label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <input type="email" class="form-control" id="Email" placeholder="Email" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Homepage" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Homepage</label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <input type="url" class="form-control" id="Homepage" placeholder="Homepage" required>
            </div>
        </div>
        <div class="form-group">
            <label for="Text" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">Текст</label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <textarea class="form-control" rows="3" required></textarea>
            </div>
        </div>
        <div class="form-group">
            <label for="captcha" class="col-sm-3 col-xs-3 col-md-3 col-lg-3 control-label">
                <img src="/<?php echo $captcha_img ?>"/>
            </label>
            <div class="col-sm-5 col-xs-5 col-md-5 col-lg-5">
                <input type="captcha" class="form-control" id="captcha" placeholder="Введите цифры" required>
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-4 col-sm-4 col-xs-4 col-md-4 col-lg-4 col-xs-offset-4 col-md-offset-4 col-lg-offset-4">
                <button type="submit" class="btn btn-default">Send</button>
            </div>
        </div>
    </form>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
</body>
</html>
