<?php
session_start();
session_destroy();
$connect->redirect($baseUrl . 'landing.php?page=approve&action=login');
exit;