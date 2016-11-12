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
     * @user_id string Token del usuario
     */
    public function get($user_id) {

        $sql = "SELECT `value` AS text FROM $this->table WHERE `key`='$this->key' AND `user_id` = '$user_id'";
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
     * @user_id string Token del usuario
     * @value string Text
     * @update integer Create or update
     */
    public function save($user_id,$value,$update) {

        //$value = nl2br($value);

        if (empty($update)) {
            $sql = "INSERT INTO $this->table (`user_id`,`key`,`value`) VALUES ('$user_id','$this->key','$value')";
        } else {
            $sql = "UPDATE $this->table SET `value` = '$value' WHERE `key`='$this->key' AND `user_id` = '$user_id'";
        }
echo $sql;
        $this->db->Execute($sql);

        return json_encode('1');
    }

}
