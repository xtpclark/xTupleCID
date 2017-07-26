<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");

if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
INSERT INTO checkvmevent(
            checkvmevent_vm_mailbox, checkvmevent_event_type)
    VALUES (
'{$_GET['mailbox']}',
'{$_GET['type']}'
    
    )

"
);

pg_free_result($qu);
pg_close($db_conn);

?>
