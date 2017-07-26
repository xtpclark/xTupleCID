<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");

if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
INSERT INTO newvmevent(
            newvmevent_vm_dur, newvmevent_vm_msgnum,
newvmevent_vm_mailbox,newvmevent_caller_id_num,
            newvmevent_caller_id_name, newvmevent_vm_date,
newvmevent_event_type)
    VALUES (
'{$_GET['dur']}',
'{$_GET['msgnum']}',
'{$_GET['mailbox']}',
'{$_GET['cid_number']}',
'{$_GET['cid_name']}',
'{$_GET['date']}',
'{$_GET['type']}'

    )

"
);

pg_free_result($qu);
pg_close($db_conn);

?>
