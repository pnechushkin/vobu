<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 19.05.2018
 * Time: 18:42
 */

spl_autoload_register(function ($class_name) {
    include 'app/' . $class_name . '.php';
});
function cleen_val($val)
{

    $vowels = array("'", "\"", "\\", "`", "*");
    $cleen_val = str_replace($vowels, "", $val);
    $cleen_val = trim($cleen_val);
    $cleen_val = htmlspecialchars($cleen_val);
    $cleen_val = mysql_escape_string($cleen_val);
    return $cleen_val;
}