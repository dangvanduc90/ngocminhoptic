<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if (!function_exists('DummyFunction')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function DummyFunction()
    {

    }
}

if (!function_exists('convert_format_ymd')) {
    function convert_format_ymd($str) {
        $res = null;
        $str = explode('/',$str);
        if(sizeof($str) == 3){
            $res = $str[2].'-'.$str[1].'-'.$str[0];
        }
        return $res;
    }
}

if (!function_exists('getName')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getName($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->name;
        }else return $obj->name_en;
    }
}

if (!function_exists('getContent')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getContent($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->content;
        }else return $obj->content_en;
    }
}

if (!function_exists('getDescription')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getDescription($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->description;
        }else return $obj->description_en;
    }
}

if (!function_exists('getNote')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getNote($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->note;
        }else return $obj->note_en;
    }
}

if (!function_exists('getChatLieu')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getChatLieu($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->chatlieu;
        }else return $obj->chatlieu_en;
    }
}

if (!function_exists('getDes')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function getDes($obj)
    {
        $locale = \App::getLocale();

        if (\App::isLocale('vi')) {
            return $obj->des_s;
        }else return $obj->des_s_en;
    }
}

if (!function_exists('send_mail')) {

    /**
     * description
     *
     * @param
     * @return
     */
    function send_mail($email, $title, $subject, $content)
    {
    	try
        {
			$mail->CharSet = 'UTF-8';                                       // Enable verbose debug output
            $mail->isSMTP();                                            // Set mailer to use SMTP
            $mail->Host       = 'smtp.gmail.com';  // Specify main and backup SMTP servers
            $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
            $mail->Username   = config('mail.username');                     // SMTP username
            $mail->Password   = config('mail.password');                              // SMTP password
            $mail->SMTPSecure = 'tls';
            $mail->Port       = 587;                                    // TCP port to connect to
            $mail->smtpConnect(
                array(
                    "ssl" => array(
	                    "verify_peer" => false,
	                    "verify_peer_name" => false,
	                    "allow_self_signed" => true
                    )
                )
            );
            $mail->setFrom(config('mail.username'), $title);
            $mail->addAddress($email);
            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body    = $content;
            $mail->send();
        }catch (Exception $e)
        {}
    }
}

if (!function_exists('stripVN')) {
    function stripVN($str) {
        $str = preg_replace("/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/", 'a', $str);
        $str = preg_replace("/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/", 'e', $str);
        $str = preg_replace("/(ì|í|ị|ỉ|ĩ)/", 'i', $str);
        $str = preg_replace("/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/", 'o', $str);
        $str = preg_replace("/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/", 'u', $str);
        $str = preg_replace("/(ỳ|ý|ỵ|ỷ|ỹ)/", 'y', $str);
        $str = preg_replace("/(đ)/", 'd', $str);

        $str = preg_replace("/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/", 'A', $str);
        $str = preg_replace("/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/", 'E', $str);
        $str = preg_replace("/(Ì|Í|Ị|Ỉ|Ĩ)/", 'I', $str);
        $str = preg_replace("/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/", 'O', $str);
        $str = preg_replace("/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/", 'U', $str);
        $str = preg_replace("/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/", 'Y', $str);
        $str = preg_replace("/(Đ)/", 'D', $str);
        return $str;
    }
}
