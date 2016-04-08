<!DOCTYPE html>
<head>
	<title>Hello from NGINX-PHP with cron task on Docker</title>
</head>
<body>
	<h1>Hello from NGINX-PHP with cron task on Docker</h1>
	<p><?php

$content = @file_get_contents("/opt/app/var/counter");
if (!$content) {
	$content = "0";
}
$lastModInMillis = @filemtime("/opt/app/var/counter");
if (!$lastModInMillis) {
	$lastMod = "never";
} else {
	$lastMod = @date("Y-m-d H:i:s", $lastModInMillis);
}
$counter = intval($content);
echo "Counter is $counter. Last updated at: $lastMod"; 

	?></p>
	<p>
		See <a href="phpinfo.php">PHP info</a> for more information.
	</p>
</body>
