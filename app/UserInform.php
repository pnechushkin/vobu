<?php

/**
 * Created by PhpStorm.
 * User: pnech
 * Date: 17.05.2018
 * Time: 11:56
 */
class UserInform
{
    protected $ip_user;
    protected $user_agent;
    protected $HTTP_USER_AGENT;
    protected $browser = 'indefined';

    public function __construct()
    {
        $this->user_agent = $this->AgentUser();
        $this->ip_user = $_SERVER["REMOTE_ADDR"];
    }

    protected function AgentUser()
    {
        $this->HTTP_USER_AGENT = $_SERVER["HTTP_USER_AGENT"];
        if (strpos($this->HTTP_USER_AGENT, "Firefox") !== false) {
            $this->browser = "Firefox";
        } elseif (strpos($this->HTTP_USER_AGENT, "Opera") !== false) {
            $this->browser = "Opera";
        } elseif (strpos($this->HTTP_USER_AGENT, "Chrome") !== false) {
            $this->browser = "Chrome";
        } elseif (strpos($this->HTTP_USER_AGENT, "MSIE") !== false) {
            $this->browser = "Internet Explorer";
        } elseif (strpos($this->HTTP_USER_AGENT, "Safari") !== false) {
            $this->browser = "Safari";
        }
    }

    public function getIpUser()
    {
        return $this->ip_user;
    }
    public function getUserAgent()
    {
        return $this->user_agent;
    }
}