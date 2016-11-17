<?php
/**
 * News service
 *
 * @category  Service
 * @package   Oraculo
 * @author    Fogui <github.com/fogui>
 * @copyright 2016, UMAIC (http://umaic.org)
 * @license https://www.gnu.org/licenses/gpl-3.0.en.html GNU General Public License
 * @link      http://oraculo.umaic.org Oraculo
 */
class NewsService
{

    private $db;
    private $meses;
    private $config;
    private $lib_dir;
    private $service_dir;

    function __construct() {

        include(dirname( __FILE__ ).'/../config.php');

        $this->config = $config;
        $this->lib_dir = $config['libraries'];
        $this->service_dir = $config['services'];

        include_once($this->lib_dir."/factory.php");

        $this->db = Factory::create('mysql');
        $this->meses = array('','Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
    }

    /**
     * Get news
     *
     * @params string Parameters string separated by ~
     */
    public function get($params) {

        list($source,$date,$diccionario,$user_id) = explode('~', $params);

        $sql = "SELECT * FROM news WHERE source='$source' AND DATE(cdate) = '$date'";

        if ($diccionario == 1) {

            include_once($this->service_dir."/diccionario.php");
            $service = new DiccionarioService();

            $j = json_decode($service->get($user_id));

            $palabras = explode(PHP_EOL, $j->text);

            $sql_p = '';
            foreach ($palabras as $p => $palabra) {
                if ($p > 0) {
                    $sql_p .= ' OR ';
                }
                $sql_p .= " title LIKE '%$palabra%'";
            }

            $sql .= ' AND ('.$sql_p.')';

        }

        $rs = $this->db->open($sql);

        $news = array();
        while ($row = $this->db->FO($rs)) {
            $news[] = $row;
        }

        return json_encode($news);
    }
}
