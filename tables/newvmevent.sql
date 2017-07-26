SELECT 
  xt.create_table('newvmevent', 'xtcid');

SELECT
  xt.add_column('newvmevent',  'newvmevent_id',           'SERIAL', 'NOT NULL', 'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_vm_dur',         'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_vm_mailbox',     'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_vm_msgnum',      'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_caller_id_num',  'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_caller_id_name', 'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_vm_date',        'TEXT',  NULL,      'xtcid'),
  xt.add_column('newvmevent',  'newvmevent_event_type',     'TEXT',  NULL,      'xtcid');
														  
SELECT xt.add_constraint('newvmevent',  'newvmevent_pkey', $$PRIMARY KEY (newvmevent_id)$$, 'xtcid');

ALTER TABLE xtcid.newvmevent OWNER TO "admin";
GRANT ALL ON TABLE xtcid.newvmevent TO "admin";
GRANT ALL ON TABLE xtcid.newvmevent TO xtrole;
COMMENT ON TABLE xtcid.newvmevent IS 'New Voice Mail event information, 
VM_DUR
VM_MSGNUM
VM_MAILBOX
CALLER_ID_NUMBER
CALLER_ID_NAME
VM_DATE
EVENT_TYPE';
