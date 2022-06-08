<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Format{
	public function money($number, $suffix = 'đ'){
		if (!empty($number)) {
            return number_format($number, 0, ',', '.') . "{$suffix}";
        }
    }
}