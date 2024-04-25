TYPE=VIEW
query=select `a`.`id` AS `id`,`a`.`user_id` AS `user_id`,`a`.`title` AS `title`,`a`.`sub_title` AS `sub_title`,`a`.`product_code` AS `product_code`,`a`.`local_selling_price` AS `local_selling_price`,`a`.`local_discount` AS `local_discount`,`b`.`variation_sub_title` AS `variation_sub_title`,`b`.`variation_product_code` AS `variation_product_code`,`b`.`product_regular_price` AS `product_regular_price`,`b`.`product_selling_price` AS `discount`,`b`.`id` AS `variant_id`,`a`.`enable_variation` AS `enable_variation`,`a`.`disable_buy` AS `disable_buy`,`a`.`delivery_time` AS `delivery_time`,`a`.`is_active` AS `is_active` from (`masterl_live`.`products` `a` left join `masterl_live`.`product_attribute_variations` `b` on((`a`.`id` = `b`.`main_pid`)))
md5=479d0f549fc9e74f86274fe1db4d0bdb
updatable=0
algorithm=0
definer_user=masterl
definer_host=localhost
suid=2
with_check_option=0
timestamp=2024-03-05 08:48:41
create-version=2
source=SELECT `a`.`id` AS `id`, `a`.`user_id` AS `user_id`, `a`.`title` AS `title`, `a`.`sub_title` AS `sub_title`, `a`.`product_code` AS `product_code`, `a`.`local_selling_price` AS `local_selling_price`, `a`.`local_discount` AS `local_discount`, `b`.`variation_sub_title` AS `variation_sub_title`, `b`.`variation_product_code` AS `variation_product_code`, `b`.`product_regular_price` AS `product_regular_price`, `b`.`product_selling_price` AS `discount`, `b`.`id` AS `variant_id`, `a`.`enable_variation` AS `enable_variation`, `a`.`disable_buy` AS `disable_buy`, `a`.`delivery_time` AS `delivery_time`, `a`.`is_active` AS `is_active` FROM (`products` `a` left join `product_attribute_variations` `b` on((`a`.`id` = `b`.`main_pid`)))
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `a`.`id` AS `id`,`a`.`user_id` AS `user_id`,`a`.`title` AS `title`,`a`.`sub_title` AS `sub_title`,`a`.`product_code` AS `product_code`,`a`.`local_selling_price` AS `local_selling_price`,`a`.`local_discount` AS `local_discount`,`b`.`variation_sub_title` AS `variation_sub_title`,`b`.`variation_product_code` AS `variation_product_code`,`b`.`product_regular_price` AS `product_regular_price`,`b`.`product_selling_price` AS `discount`,`b`.`id` AS `variant_id`,`a`.`enable_variation` AS `enable_variation`,`a`.`disable_buy` AS `disable_buy`,`a`.`delivery_time` AS `delivery_time`,`a`.`is_active` AS `is_active` from (`masterl_live`.`products` `a` left join `masterl_live`.`product_attribute_variations` `b` on((`a`.`id` = `b`.`main_pid`)))
mariadb-version=100148
