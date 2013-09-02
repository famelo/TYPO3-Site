<?php
define('TYPO3_MODE', 'MySQL Dump');
$configuartion = include('typo3conf/localconf.php');
$db = array(
	'username' => $typo_db_username,
	'password' => $typo_db_password,
	'host' => $typo_db_host,
	'database' => $typo_db
);
$mysqli = new mysqli($db['host'], $db['username'], $db['password'], $db['database']);

if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}

$tables = array(
	'cf_cache_hash',
	'cf_cache_hash_tags',
	'cf_cache_pages',
	'cf_cache_pages_tags',
	'cf_cache_pagesection',
	'cf_cache_pagesection_tags',
	'cf_cache_rootline',
	'cf_cache_rootline_tags',
	'tx_extensionmanager_domain_model_extension'
);

foreach ($tables as $table) {
	echo 'Truncating ' . $table . chr(10);
	$mysqli->query('TRUNCATE TABLE ' . $table);
}

exec('mysqldump --user=' . $db['username'] . ' --password=' . $db['password'] . ' --host=' . $db['host'] . ' ' . $db['database'] . ' > typo3conf/Template.sql')

?>