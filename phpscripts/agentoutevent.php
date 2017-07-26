<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");
if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
INSERT INTO agentout(
            agentout_queues, agentout_caller_id_nam, agentout_caller_id_num, 
            agentout_extension, agentout_extension_type, agentout_event_type, 
            agentout_job_id)
    VALUES (
'{$_GET['queues']}',
'{$_GET['name']}'
'{$_GET['num']}'
'{$_GET['ext']}'
'{$_GET['type']}'
'{$_GET['event']}'
'{$_GET['job']}'
    
    )

"
);

pg_free_result($qu);
pg_close($db_conn);

?>
