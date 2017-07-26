SELECT 
  xt.create_table('agentin', 'xtcid');

SELECT 
  xt.add_column('agentin', 'agentin_id',            'SERIAL', 'NOT NULL', 'xtcid'),
  xt.add_column('agentin', 'agentin_queues',          'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin', 'agentin_caller_id_nam',   'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin_caller_id_num',              'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin_extension',                  'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin_extension_type',             'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin_event_type',                 'TEXT',     NULL, 'xtcid'),
  xt.add_column('agentin_job_id',                     'TEXT',     NULL, 'xtcid');

SELECT 
  xt.add_constraint('agentin', 'agentin_pkey', $$PRIMARY KEY (agentin_id)$$, 'xtcid');


ALTER TABLE xtcid.agentin OWNER TO "admin";
GRANT ALL ON TABLE xtcid.agentin TO "admin";
GRANT ALL ON TABLE xtcid.agentin TO xtrole;

COMMENT ON TABLE xtcid.agentin IS 'Agent Log In event information, 
QUEUES
CALLER_ID_NAME
CALLER_ID_NUMBER
EXTENSION
EXTENSION_TYPE
EVENT_TYPE
JOB_ID
';
