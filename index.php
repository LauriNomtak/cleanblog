<?php
//Set timezone
date_default_timezone_set('Europe/Tallinn');
//Save wall clock time at the start
$page_load_start = microtime(1);

//Connect to db
require 'include/database.php';

//Set page
$page = isset($_GET['page']) ? $_GET['page'] : 'home';

//Include controller if it exists
if (file_exists("controllers/$page.php")) {
    require "controllers/$page.php";
}

//Include template
require "templates/master_template.php";

//show page load time
echo 'Lehte laaditi ' . round(microtime(1) - $page_load_start, 4) . ' sekundit';
?>