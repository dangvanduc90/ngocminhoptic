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
