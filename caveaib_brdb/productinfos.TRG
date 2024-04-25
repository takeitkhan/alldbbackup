TYPE=TRIGGERS
triggers='CREATE DEFINER=`caveaib`@`localhost` TRIGGER insert_product_trigger\nAFTER INSERT ON productinfos\nFOR EACH ROW\nBEGIN\n    -- Insert the new product ID into the stock table\n    INSERT INTO stocks (productid, stock) VALUES (NEW.productid, 0);\n    \n    -- Insert the new product ID into the stockinfos table\n    INSERT INTO stock_infos (showroomid, productid, stock) VALUES (\'S001\', NEW.productid, 0);\nEND'
sql_modes=1342177280
definers='caveaib@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_unicode_ci'
db_cl_names='latin1_swedish_ci'
