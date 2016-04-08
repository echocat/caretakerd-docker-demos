<?php
    $oldContent = @file_get_contents("/opt/app/var/counter");
    if (!$oldContent) {
        $oldContent = "0";
    }
    $counter = intval($oldContent);
    $counter++;
    file_put_contents("/opt/app/var/counter", "$counter");

    echo "Increment counter set to $counter\n";
?>