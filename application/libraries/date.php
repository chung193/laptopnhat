<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Date{
	public function format ($date){
        $date = date("d/m/Y", strtotime($date));
        $day = date('w', strtotime($date));
        switch($day){
            case '1':
                $d = 'Th 2';
                break;
            case '2':
                $d = 'Th 3';
                break;
            case '3':
                $d = 'Th 4';
                break;
            case '4':
                $d = 'Th 5';
                break;
            case '5':
                $d = 'Th 6';
                break;
            case '6':
                $d = 'Th 7';
                break;
            case '7':
                $d = 'cn';
                break;
        }
		return $d.' '.$date;
    }
}