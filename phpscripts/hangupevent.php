<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");

if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
INSERT INTO hangup(
            hangup_caller_id_nam, hangup_caller_id_num,
            hangup_extension, hangup_extension_type, hangup_event_type,
            hangup_job_id)
    VALUES (
'{$_GET['name']}',
'{$_GET['num']}',
'{$_GET['ext']}',
'{$_GET['type']}',
'{$_GET['event']}',
'{$_GET['job']}'

    )

"
);

pg_free_result($qu);
pg_close($db_conn);

?>
