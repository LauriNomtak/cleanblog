<?php

//Save wall clock time at the start
$page_load_start = microtime(1);

//Connect to db
require 'include/database.php';

//Set page
$page = isset($_GET['page']) && file_exists("pages/$_GET[page].php") ? $_GET['page'] : 'home';

//Include requred page
require "templates/master_template.php";

//show page load time
echo 'Lehte laaditi ' . round(microtime(1) - $page_load_start, 4) . ' sekundit';
?>