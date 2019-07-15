<?php
session_start();
session_destroy();
$connect->redirect($baseUrl . 'landing.php?page=staff&action=login');
exit;