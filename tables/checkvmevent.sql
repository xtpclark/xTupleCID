SELECT xt.create_table('checkvmevent','xtcid');

SELECT
xt.add_column('checkvmevent', 'checkvmevent_id',        'SERIAL','NOT NULL',  'xtcid'),
xt.add_column('checkvmevent', 'checkvmevent_vm_mailbox',  'TEXT',      NULL,  'xtcid'),
xt.add_column('checkvmevent', 'checkvmevent_event_type',  'TEXT',      NULL,  'xtcid');
  
  SELECT xt.add_constraint('checkvmevent','checkvmevent_pkey', $$PRIMARY KEY (checkvmevent_id)$$, 'xtcid');

ALTER TABLE xtcid.checkvmevent OWNER TO "admin";
GRANT ALL ON TABLE xtcid.checkvmevent TO "admin";
GRANT ALL ON TABLE xtcid.checkvmevent TO xtrole;
COMMENT ON TABLE xtcid.checkvmevent IS 'Checked Voice Mail event information, 
VM_MAILBOX
EVENT_TYPE';
