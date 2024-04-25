TYPE=TRIGGERS
triggers='CREATE DEFINER=`caveaib`@`localhost` TRIGGER `after_pos_to_bank_deposit_insert` AFTER INSERT ON `pos_to_bank_deposits` FOR EACH ROW BEGIN \n    -- Update bankdeposit table \n    INSERT INTO bank_deposits (bankname, slipno, sources, depositor, amount, deposit_date) \n    VALUES (\'sonalibank\', \'Frompos\', \'directpossells\', \'showroom\', NEW.amount, NEW.sale_date); \n    \n    -- Update bankbalance table \n    UPDATE bankbalances \n    SET sonalybankbalance = sonalybankbalance + NEW.amount; \nEND'
sql_modes=524288
definers='caveaib@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
