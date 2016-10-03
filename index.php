<?php
/**
 * Oraculo(tm) : Crawler software (http://oraculo.umaic.org)
 * Copyright 2016, UMAIC (http://umaic.org)
 *
 * Licensed under GNU GENERAL PUBLIC LICENSE
 * Redistributions of files must retain the above copyright notice.
 *
 * PHP version 5
 *
 * @category  Script
 * @package   Oraculo
 * @author    Fogui <github.com/fogui>
 * @copyright 2016, UMAIC (http://umaic.org)
 * @license https://www.gnu.org/licenses/gpl-3.0.en.html GNU General Public License
 * @link      http://oraculo.umaic.org Oraculo
*/

require dirname( __FILE__ ).'/config.php';

$service_dir = $config['services'];

extract($_GET);

header('Content-Type: application/json');

switch ($m) {
    case 'news':

        include_once($service_dir.'/news.php');

        $service = new NewsService();

        switch ($a) {
            case 'get':
                    echo $service->get();
                break;

            default:
                # code...
                break;
        }
        break;

    default:
        # code...
        break;
}
?>
