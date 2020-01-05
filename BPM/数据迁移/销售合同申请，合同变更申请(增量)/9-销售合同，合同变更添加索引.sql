create index index_sale_contract_sm on sie_sale_contract_t(serial_num);
create index index_sale_contract_a_sm on sie_sale_contract_abstract_t(serial_num);
create index index_sale_contract_o_sm on sie_sale_contract_opinion_t(serial_num);
create index index_sale_contract_pb_sm on sie_sale_contract_pb_t(serial_num);

create index index_contract_change_sm on sie_contract_change_t(serial_num);
create index index_contract_change_o_sm on sie_contract_change_opinion_t(serial_num);
create index index_contract_change_a_sm on sie_contract_change_abstract_t(serial_num);
create index index_contract_change_p_sm on sie_contract_change_pb_t(serial_num);

create index index_pre_contract_sm on sie_pre_contract_t(serial_num);

COMMIT;