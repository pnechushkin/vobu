<?php
/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 18.05.2018
 * Time: 14:23
 */

class App
{
    protected $url;
    protected $page;
    protected $segments;
    protected $file;

    function __construct()
    {
        $this->url = $_SERVER['REQUEST_URI'];
        $this->segments = explode('/', $this->url);
        if (empty($this->segments[1])) {
            $this->file = 'pages/home.php';
        } else {
            $this->file = 'pages/'.$this->segments[1].'.php';
        }
        if (file_exists($this->file)) {
            include("$this->file");
        } else {
            include('pages/404.php');
        }

    }

}