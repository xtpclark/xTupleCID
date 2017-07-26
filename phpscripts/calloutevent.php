<?php

// webdb connection information
 $db_conn = pg_connect("host=yourserver port=5432 dbname=testdb user=username password=passwd");

if (!$db_conn) {
        echo "no go bro";
}

$qu = pg_query($db_conn, "
  INSERT INTO callout(
            callout_caller_id_number, callout_caller_id_name, callout_extension,
            callout_extension_type, callout_feature_data, callout_incoming_did, callout_event_type,
            callout_job_id, callout_date)
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
