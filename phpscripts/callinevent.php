<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");

if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
  INSERT INTO callin(
            callin_caller_id_number, callin_caller_id_name, callin_extension,
            callin_extension_type, callin_feature_data, callin_incoming_did, callin_event_type,
            callin_job_id, callin_date)
    VALUES (
    '{$_GET['cid_num']}',
    '{$_GET['cid_name']}',
    '{$_GET['cid_ext_from']}',
    '{$_GET['cid_ext_type']}',
    '{$_GET['cid_feature']}',
    '{$_GET['cid_in_did']}',
    '{$_GET['cid_event_type']}',
    '{$_GET['cid_job_id']}',
     now()
    )

"
);

pg_free_result($qu);
pg_close($db_conn);

?>
