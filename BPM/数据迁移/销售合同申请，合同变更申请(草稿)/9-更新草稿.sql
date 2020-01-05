UPDATE sie_sale_contract_t s1,sie_sale_contract_pb_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_sale_contract_t s1,sie_sale_contract_opinion_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_sale_contract_t s1,sie_sale_contract_abstract_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_contract_change_t s1,sie_contract_change_opinion_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_contract_change_t s1,sie_contract_change_abstract_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_contract_change_t s1,sie_contract_change_pb_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;

INSERT INTO sie_bpm_draft_t (extra)  VALUES
('RYJXSHT1912760'),('RYJXSHT1912747'),('RYJXSHT1912741'),('RYJXSHT1912731'),('RYJXSHT1912713'),('RYJXSHT1912712'),('RYJXSHT1912670'),('RYJXSHT1912567'),('RYJXSHT1912552'),('RYJXSHT1912498'),('RYJXSHT1912435'),('RYJXSHT1912261'),('RYJXSHT1912240'),('RYJXSHT1912195'),('RYJXSHT1912180'),('RYJXSHT1912162'),('RYJXSHT1912067'),('RYJXSHT1912064'),('RYJXSHT1912051'),('RYJXSHT19111533'),('RYJXSHT19111511'),('RYJXSHT19111335'),('RYJXSHT19111253'),('RYJXSHT19111145'),('RYJXSHT19111054'),('RYJXSHT19111040'),('RYJXSHT1911785'),('RYJXSHT1911705'),('RYJXSHT1911535'),('RYJXSHT1911231'),('RYJXSHT1911121'),('RYJXSHT1911101'),('RYJXSHT19101225'),('RYJXSHT1910588'),('RYJXSHT19081165'),('RYJXSHT1905513'),('RYJXSHT1902572'),('RYJXSHT1902512'),('RYJXSHT1902296'),('RYJXSHT1901539'),('RYJXSHT1901525'),('RYJXSHT1901461'),('RYJXSHT1812860'),('RYJXSHT18111284'),('RYJXSHT1801167'),('RYJXSHT1801165'),('RYJXSHT1712050');

UPDATE sie_sale_contract_t s,sie_bpm_draft_t d 
set d.source_id = s.id ,d.source_type = 'saleContract',d.draft_name = CONCAT('销售合同',s.serial_num),d.zh_name = s.zh_name,d.data_state = '1' ,
d.created_date = s.created_date ,d.last_modified_date = s.last_modified_date,d.user_id = s.user_id 
where d.extra = s.serial_num and s.data_state = '-2';

INSERT INTO sie_bpm_draft_t (extra)  VALUES
('HTBGS1903074'),('HTBGS1908044'),('HTBGS1908109'),('HTBGS1910037'),('HTBGS1911065'),
('HTBGS1912012'),('HTBGS1912026'),('HTBGS1912043'),('HTBGS1912088');

UPDATE sie_contract_change_t s,sie_bpm_draft_t d 
set d.source_id = s.id ,d.source_type = 'contractChange',d.draft_name = CONCAT('合同变更',s.serial_num),d.zh_name = s.zh_name,d.data_state = '1' ,
d.created_date = s.created_date ,d.last_modified_date = s.last_modified_date,d.user_id = s.user_id 
where d.extra = s.serial_num and s.data_state = '-2';

UPDATE sie_bpm_draft_t set extra = null where source_type in ('saleContract','contractChange');

update sie_sale_contract_t set serial_num = null where data_state = '-2';
update sie_sale_contract_pb_t set serial_num = null where data_state = '-2';
update sie_sale_contract_opinion_t set serial_num = null where data_state = '-2';
update sie_sale_contract_abstract_t set serial_num = null where data_state = '-2';
update sie_contract_change_t set serial_num = null where data_state = '-2';
update sie_contract_change_pb_t set serial_num = null where data_state = '-2';
update sie_contract_change_abstract_t set serial_num = null where data_state = '-2';
update sie_contract_change_opinion_t set serial_num = null where data_state = '-2';