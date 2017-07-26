SELECT xt.create_table('cid', 'xtcid');

SELECT
  xt.add_column('cid', 'cid_id',              'serial', 'NOT NULL', 'xtcid'),
  xt.add_column('cid', 'cid_caller_id_number',  'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_caller_id_name',    'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_extension',         'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_extension_type',    'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_feature_data',      'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_incoming_did',      'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_event_type',        'TEXT', NULL, 'xtcid'),
  xt.add_column('cid', 'cid_job_id',            'TEXT', NULL, 'xtcid');
  
SELECT
  xt.add_constraint('cid', 'cid_pkey', $$PRIMARY KEY (cid_id)$$, 'xtcid');
 
ALTER TABLE xtcid.cid OWNER TO "admin";
GRANT ALL ON TABLE xtcid.cid TO "admin";
GRANT ALL ON TABLE xtcid.cid TO xtrole;
COMMENT ON TABLE xtcid.cid IS 'Caller ID information';
