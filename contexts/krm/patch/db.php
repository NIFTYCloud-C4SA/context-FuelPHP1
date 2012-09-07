<?php
/**
 * The development database settings.
 */

return array(
	'default' => array(
		'type'        => 'mysql',
		'connection'  => array(
			'hostname'   => getenv('C4SA_MYSQL_HOST'),
			'port'       => '3306',
			'database'   => getenv('C4SA_MYSQL_DB'),
			'username'   => getenv('C4SA_MYSQL_USER'),
			'password'   => getenv('C4SA_MYSQL_PASSWORD'),
		),
	),
);
