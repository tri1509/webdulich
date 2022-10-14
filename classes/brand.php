<?php
    $filepath = realpath(dirname(__FILE__));
    include_once ($filepath. '/../lib/database.php');
    include_once ($filepath. '/../helpers/format.php');
?>
<?php
    class brand {

        private $db;
        private $fm;
        public function __construct() {
            $this->db = new Database();
            $this->fm = new Format();
        }
        public function show_brand(){
            $query = "SELECT * FROM tbl_brand ORDER BY brand_id ASC";
            $result = $this->db->select($query);
            return $result;
        }

        public function show_sider(){
            $query = "SELECT * FROM tbl_slider ORDER BY slider_id ASC";
            $result = $this->db->select($query);
            return $result;
        }
    }
?>