SELECT xt.create_table('hangup','xtcid');

SELECT 
xt.add_column('hangup', 'hangup_id',          'SERIAL', 'NOT NULL', 'xtcid'),
xt.add_column('hangup', 'hangup_caller_id_nam',   'TEXT', NULL, 'xtcid'),
xt.add_column('hangup', 'hangup_caller_id_num',   'TEXT', NULL, 'xtcid'),
xt.add_column('hangup', 'hangup_extension',       'TEXT', NULL, 'xtcid'),
xt.add_column('hangup', 'hangup_extension_type',  'TEXT', NULL, 'xtcid'),
xt.add_column('hangup', 'hangup_event_type',      'TEXT', NULL, 'xtcid'),
xt.add_column('hangup', 'hangup_job_id',          'TEXT', NULL, 'xtcid');

SELECT
  xt.add_constraint('hangup', 'hangup_pkey', $$PRIMARY KEY (hangup_id)$$, 'xtcid');

ALTER TABLE xtcid.hangup OWNER TO "admin";
GRANT ALL ON TABLE xtcid.hangup TO "admin";
GRANT ALL ON TABLE xtcid.hangup TO xtrole;
COMMENT ON TABLE xtcid.hangup IS 'Hang Up event information, 
CALLER_ID_NAME
CALLER_ID_NUMBER
EXTENSION
EXTENSION_TYPE
EVENT_TYPE
JOB_ID
';
