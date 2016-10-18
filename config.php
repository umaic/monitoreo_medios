<?php

// Se usa en libraries
$config['base'] = '';

$root = (empty($_SERVER['DOCUMENT_ROOT'])) ? dirname(__FILE__) : $_SERVER['DOCUMENT_ROOT'].'/'.$config['base'];

$config['base_path'] = $root;
$config['libraries'] = $config['base_path'].'/libraries';
$config['services'] = $config['base_path'].'/services';
$config['cache_pdf'] = $config['base_path'].'/cache';
$config['cache_json'] = $config['base_path'].'/cache';

?>
