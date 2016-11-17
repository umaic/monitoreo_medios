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

// Parametro $m = modulo
// Parametro $a = accion
// Parametro $p = parametros separados por ~
extract($_GET);

header('Content-Type: application/json');

switch ($m) {
    case 'news':

        include_once($service_dir.'/news.php');

        $service = new NewsService();

        switch ($a) {
            case 'get':
                    echo $service->get($p);
                break;

            default:
                # code...
                break;
        }
        break;

    case 'diccionario':
        include_once($service_dir.'/diccionario.php');

        $service = new DiccionarioService();

        switch ($a) {
            case 'get':
                    echo $service->get($p);
                break;

            default:
                    echo $service->save($p,$_POST['text'],$_POST['update']);
                break;
        }
        break;

    default:
        # code...
        break;
}
?>
