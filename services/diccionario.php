<?php
/**
 * Diccionario service
 *
 * @category  Service
 * @package   Oraculo
 * @author    Fogui <github.com/fogui>
 * @copyright 2016, UMAIC (http://umaic.org)
 * @license https://www.gnu.org/licenses/gpl-3.0.en.html GNU General Public License
 * @link      http://oraculo.umaic.org Oraculo
 */
class DiccionarioService
{

    private $db;
    private $meses;
    private $config;
    private $lib_dir;
    private $table;
    private $key;

    function __construct() {

        require dirname( __FILE__ ).'/../config.php';

        $this->lib_dir = $config['libraries'];

        require $this->lib_dir."/factory.php";

        $this->config = $config;
        $this->db = Factory::create('mysql');
        $this->meses = array('','Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
        $this->table = 'user_parameter';
        $this->key = 'diccionario';
    }

    /**
     * Get diccionario
     *
     * @auth0_token string Token del usuario
     */
    public function get($auth0_token) {

        $sql = "SELECT `value` AS text FROM $this->table WHERE `key`='$this->key' AND `auth0_token` = '$auth0_token'";
        $rs = $this->db->open($sql);

        $row = $this->db->FO($rs);

        $text = '';
        $update = 0;
        if (isset($row->text)) {
            $text = $row->text;
            $update = 1;
        }

        return json_encode(compact('text','update'));
    }

    /**
     * Set diccionario
     *
     * @params array Parameters arary
     */
    public function save($parameters) {

        list($auth0_token,$value,$update) = explode('|', $parameters);

        $value = nl2br(htmlentities($value, ENT_QUOTES, 'UTF-8'));

        if (empty($update)) {
            $sql = "INSERT INTO $this->table (`auth0_token`,`key`,`value`) VALUES ('$auth0_token','$this->key','$value')";
        } else {
            $sql = "UPDATE $this->table SET value = '$value' WHERE key='$this->key' AND auth0_token = '$auth0_token'";
        }

        $this->db->Execute($sql);

        return json_encode('1');
    }

}
