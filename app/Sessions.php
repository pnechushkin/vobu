<?php
class Sessions {
    public function getSession($key){
        return isset($_SESSION[$key]) ? $_SESSION[$key] : null;
    }

    public function setSession($key, $val){
        $_SESSION[$key] = $val;
    }

    public function deleteSession($key){
        unset($_SESSION[$key]);
    }

    public function setCookie($name, $value, $duration=0){
        $exp = null;
        if($duration){
            $exp = time()+(int)$duration;
        }
        setcookie($name, $value, $exp, '/');
    }

    public function getCookie($name){
        return isset($_COOKIE[$name]) ? $_COOKIE[$name] : null;
    }

    public function deleteCookie($name){
        setcookie($name);
    }
}