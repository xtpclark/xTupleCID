# xTupleCID
xTuple Digium Caller ID intergration

Rebooting custom/callerid

https://www.digium.com/sites/digium/files/support/svadminrefmanual-5-8.pdf

Under Digium's URL Manager, configure the URL's for the following php scripts.  Please prepend your server's URL.

On Incoming Call Event URL
callevent.php?cid_num=%CALLER_ID_NUMBER%&cid_name=%CALLER_ID_NAME%&cid_ext_from=%EXTENSION%&cid_ext_type=%EXTENSION_TYPE%&cid_feature=%FEATURE_DATA%&cid_in_did=%INCOMING_DID%&cid_event_type=%EVENT_TYPE%&cid_job_id=%JOB_ID%

On Route to Extension Event URL
callevent.php?cid_num=%CALLER_ID_NUMBER%&cid_name=%CALLER_ID_NAME%&cid_ext_from=%EXTENSION%&cid_ext_type=%EXTENSION_TYPE%&cid_feature=%FEATURE_DATA%&cid_in_did=%INCOMING_DID%&cid_event_type=%EVENT_TYPE%&cid_job_id=%JOB_ID%

On New Voicemail Event URL
newvmevent.php?dur=%VM_DUR%&msgnum=%VM_MSGNUM%&mailbox=%VM_MAILBOX%&cid_number=%CALLER_ID_NUMBER%&cid_name=%CALLER_ID_NAME%&date=%VM_DATE%&type=%EVENT_TYPE%

On Checked Voicemail Event URL
checkvmevent.php?mailbox=%VM_MAILBOX%&type=%EVENT_TYPE%"

On Agent Logged In Event URL
agentinevent.php?queues=%QUEUES%&name=%CALLER_ID_NAME%&num=%CALLER_ID_NUMBER%&ext=%EXTENSION%&type=%EXTENSION_TYPE%&event=%EVENT_TYPE%&job=%JOB_ID%

On Agent Logged Out Event URL
agentoutevent.php?queues=%QUEUES%&name=%CALLER_ID_NAME%&num=%CALLER_ID_NUMBER%&ext=%EXTENSION%&type=%EXTENSION_TYPE%&event=%EVENT_TYPE%&job=%JOB_ID%

On Call Hangup Event URL
hangupevent.php?name=%CALLER_ID_NAME%&num=%CALLER_ID_NUMBER%&ext=%EXTENSION%&type=%EXTENSION_TYPE%&event=%EVENT_TYPE%&job=%JOB_ID%
		
