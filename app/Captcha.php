<?php

class Captcha
{
    private $height = 20;
    private $width = 100;
    private $code;
    private $image;
    private $backgroundColor;
    private $noiseColor;
    private $color;
    private $imagejpeg;
    private $y;

    public function __construct()
    {
        $this->code = rand(10000, 99999);
//        parent::setSession('code', $this->code);
//        $this->CreateImage();
    }

    public function CreateImage()
    {
        $this->image = imagecreate($this->width, $this->height);
        $this->backgroundColor = imagecolorallocate($this->image, 204, 216, 6);
        $this->noiseColor = imagecolorallocate($this->image, 100, 120, 180);
        $this->color = imagecolorallocate($this->image, 0, 0, 0);
        for ($i = 0; $i < ($this->width * $this->height) / 3; $i++) {
            imagefilledellipse($this->image, mt_rand(0, $this->width), mt_rand(0, $this->height), 1, 1, $this->noiseColor);
        }
        for ($i = 0; $i < ($this->width * $this->height) / 150; $i++) {
            imageline($this->image, mt_rand(0, $this->width),
                mt_rand(0, $this->height), mt_rand(0, $this->width), mt_rand(0, $this->height), $this->noiseColor);
        }
        $this->code = strval($this->code);
        for ($i = 0; $i < strlen($this->code); $i++) {

            imagestring($this->image, 3, $this->y += 15, 3, $this->code[$i], $this->color);
        }
        header('Content-Type: image/jpeg');
        $this->imagejpeg = imagejpeg($this->image);
    }
    function getKeycaptcha(){
        return $this->code;
    }
}
