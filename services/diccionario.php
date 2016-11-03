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

    function __construct() {

        require dirname( __FILE__ ).'/../config.php';

        $this->lib_dir = $config['libraries'];

        require $this->lib_dir."/factory.php";

        $this->config = $config;
        $this->db = Factory::create('mysql');
        $this->meses = array('','Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
    }

    /**
     * Get diccionario
     *
     * @auth0_token string Token del usuario
     */
    public function get($auth0_token) {

        $sql = "SELECT diccionario AS text FROM user_parameters WHERE auth0_token = '$auth0_token'";
        $rs = $this->db->open($sql);

        $row = $this->db->FO($rs);

        $text = (isset($row[0])) ? $row[0]->text : '';

        return json_encode(compact('text'));
    }

    /**
     * Set diccionario
     *
     * @params array Parameters arary
     */
    public function save() {

        $sql = 'SELECT diccionario AS text FROM user_parameters WHERE user_token = '.$token;
        $rs = $this->db->open($sql);

        $row = $this->db->FO($rs);

        $text = (isset($row[0])) ? $row[0]->text : '';

        return json_encode(compact('text'));
    }

}
