TYPE=TRIGGERS
triggers='CREATE DEFINER=`karupal`@`localhost` TRIGGER `insert_product_trigger` AFTER INSERT ON `productinfos` FOR EACH ROW BEGIN\n    -- Insert the new product ID into the stock table\n    INSERT INTO stocks (productid, stock) VALUES (NEW.productid, 0);\n    \n    -- Insert the new product ID into the stockinfos table\n    INSERT INTO stock_infos (showroomid, productid, stock) VALUES (\'S001\', NEW.productid, 0);\nEND'
sql_modes=524288
definers='karupal@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
