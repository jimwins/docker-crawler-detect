<?php
require 'vendor/autoload.php';

use Jaybizzle\CrawlerDetect\CrawlerDetect;

$agent= $_REQUEST['agent'];

$detect= new CrawlerDetect;

$detect->isCrawler($agent);

echo json_encode([ 'bot' => $detect->getMatches() ]);
