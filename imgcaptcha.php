<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 17.05.2018
 * Time: 20:55
 */
session_start();
include 'app/Sessions.php';
include 'app/Captcha.php';
$captcha = new captcha();
$captcha->CreateImage();
$_SESSION['code'] = $captcha->getKeycaptcha();