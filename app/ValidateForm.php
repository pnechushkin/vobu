<?php

/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 18.05.2018
 * Time: 11:45
 */
class ValidateForm extends Sessions
{
    private $username;
    private $category;
    private $email;
    private $homepage;
    private $text;
    private $captcha;
    private $code;
    private $message;
    private $rezalt;


    public function getRezalt()
    {
        return $this->rezalt;
    }

    public function getMessage()
    {
        return $this->message;
    }

    public function __construct()
    {
        foreach ($_POST as $key => $value) {
            $this->$key = $value;
        }
        $this->code = $this->getSession('code');
        $this->checkform();
    }

    public function checkform()
    {
        if (empty($this->username)) {
            $this->rezalt = false;
            $this->message = 'Не указан логин';
            return;
        } elseif (!preg_match("/[a-zA-Z0-9]/", $this->username)) {
            $this->rezalt = false;
            $this->message = 'Не корректный логин';
            return;
        }
        if (empty($this->category)) {
            $this->rezalt = false;
            $this->message = 'Не указана категория';
            return;
        }
        if (empty($this->email)) {
            $this->rezalt = false;
            $this->message = 'Не указан email';
            return;
        } elseif (!filter_var($this->email, FILTER_VALIDATE_EMAIL)){
            $this->rezalt = false;
            $this->message = 'Email указан не корректно';
            return;
        }
        if (empty($this->homepage)) {
            $this->rezalt = false;
            $this->message = 'Не указано поле homepage ';
            return;
        } elseif (filter_var($this->homepage, FILTER_VALIDATE_URL) === false) {
            $this->rezalt = false;
            $this->message = 'URL указан не корректно ';
            return;
        }
        if (empty($this->text)) {
            $this->rezalt = false;
            $this->message = 'Введите сообщение';
            return;
        } elseif ((preg_match("/[<\/][a-zA-Z]{1,7}[>]+/", $this->text))){
            $this->rezalt = false;
            $this->message = 'В тексте присутсвуют HTML теги ';
            return;
        }
        if (empty($this->captcha)) {
            $this->rezalt = false;
            $this->message = 'Введите цифры';
            return;
        } elseif ($this->captcha != $this->code){
            $this->rezalt = false;
            $this->message = 'Капча введена не верно';
            return;
        }
        $this->rezalt = true;
    }
}