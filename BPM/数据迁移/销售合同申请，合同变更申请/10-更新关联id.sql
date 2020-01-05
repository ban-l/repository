-- 销售合同更新关联id
UPDATE sie_sale_contract_t s1,sie_sale_contract_pb_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_sale_contract_t s1,sie_sale_contract_opinion_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_sale_contract_t s1,sie_sale_contract_abstract_t s2 set s2.contract_id = s1.id where s1.serial_num = s2.serial_num;
-- 合同变更更新关联id
UPDATE sie_contract_change_t s1,sie_contract_change_opinion_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_contract_change_t s1,sie_contract_change_abstract_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;
UPDATE sie_contract_change_t s1,sie_contract_change_pb_t s2 set s2.change_id = s1.id where s1.serial_num = s2.serial_num;