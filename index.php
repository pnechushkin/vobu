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
session_start();
include ('header.php');
new App();
include ('futer.php');

