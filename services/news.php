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

    function __construct() {

        require dirname( __FILE__ ).'/../config.php';

        $this->lib_dir = $config['libraries'];

        require $this->lib_dir."/factory.php";

        $this->config = $config;
        $this->db = Factory::create('mysql');
        $this->meses = array('','Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
    }

    /**
     * Get news
     *
     * @params string Parameters string separated by pipe
     */
    public function get($params) {

        list($source,$date) = explode('|', $params);

        $sql = "SELECT * FROM news WHERE source='$source' AND DATE(cdate) = '$date'";
        $rs = $this->db->open($sql);

        $news = array();
        while ($row = $this->db->FO($rs)) {
            $news[] = $row;
        }

        return json_encode($news);
    }
}
