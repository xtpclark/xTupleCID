SELECT xt.create_table('agentout','xtcid');

SELECT
  xt.add_column('agentout', 'agentout_id', 'serial', 'NOT NULL', 'xtcid'),
  xt.add_column('agentout', 'agentout_queues',         'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_caller_id_nam',  'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_caller_id_num',  'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_extension',      'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_extension_type', 'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_event_type',     'TEXT', NULL, 'xtcid'),
  xt.add_column('agentout', 'agentout_job_id',         'TEXT', NULL, 'xtcid');
    
  

SELECT 
  xt.add_constraint('agentout', 'agentout_pkey', $$PRIMARY KEY (agentout_id)$$, 'xtcid');

ALTER TABLE xtcid.agentout OWNER TO "admin";
GRANT ALL ON TABLE xtcid.agentout TO "admin";
GRANT ALL ON TABLE xtcid.agentout TO xtrole;
COMMENT ON TABLE xtcid.agentout IS 'Agent Log Out event information, 
QUEUES
CALLER_ID_NAME
CALLER_ID_NUMBER
EXTENSION
EXTENSION_TYPE
EVENT_TYPE
JOB_ID
';
