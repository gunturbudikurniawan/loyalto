INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`, `Occupation`) VALUES ('7', 'Darrell Shih', '4210 sunday ave.', '35', 'M', '12351235', '2015-01-22','Manager');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('2', 'Sam Cook', '3214 home lane', '15', 'M', '2351235', '2015-01-22','Casheer');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('3', 'Doug Brown', '1523 crocodile drive', '18', 'M', '1235123', '2015-01-22','Chef');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('4', 'Jane Doe', '5921 Athens Place', '12', 'F', '351253', '2015-01-22', 'Waitress');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('5', 'Ann Steiner', '4291 fun ave.', '11', 'F', '123512', '2015-01-22', 'Waitress');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('6', 'Janet Smith', '2104 window street', '14', 'F', '53215', '2015-01-22','Casheer');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('1', 'John Doe', '2312 log street', '11', 'M', '531251', '2015-01-22', 'Delivery');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('8', 'Elva Shen', '7212 benson street', '11', 'F', '1235123', '2015-01-22', 'Waitressr');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('9', 'Peter Chang', '1222 lucas lane', '20', 'M', '51235', '2015-01-22', 'Chef');
INSERT INTO `loyalto`.`employee` (`Employee_id`, `Name`, `Address`, `Salary`, `Gender`, `SSN`, `Start_date`,`Occupation`) VALUES ('10', 'Michal Wan', '0092 lucas ave.', '15', 'M', '12351235', '2015-01-22','Chef');

INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('4324 tree ave', '6504352324', '1');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('4122 chair lane ', '4087582324', '2');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('1123 building blvd.', '9178963945', '3');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('1453 bridge drive', '4809271001', '4');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('6623 pineapple lane', '9172380493', '5');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('3212 yellow street', '7811134928', '6');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('9532 bird ave.', '7831238495', '7');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('9032 ham drive', '6653329482', '8');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('1522 tree road', '1234886334', '9');
INSERT INTO `loyalto`.`customer` (`Address`, `Phone_number`, `Customer_id`) VALUES ('2222 water street', '2358853356', '10');

INSERT INTO `loyalto`.`reservation` (`Reservation_date`, `Customer_id`) VALUES ('2018-02-2', '2');
INSERT INTO `loyalto`.`reservation` (`Reservation_date`, `Customer_id`) VALUES ('2017-04-14', '5');
INSERT INTO `loyalto`.`reservation` (`Reservation_date`, `Customer_id`) VALUES ('2017-12-14', '4');
INSERT INTO `loyalto`.`reservation` (`Reservation_date`, `Customer_id`) VALUES ('2018-02-14', '7');
INSERT INTO `loyalto`.`reservation` (`Reservation_date`, `Customer_id`) VALUES ('2018-02-14', '9');

INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('1', 'steak', '20.00', '40');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('2', 'hotdog', '5.00', '60');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('3', 'pizza', '9.99', '20');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('4', 'salad', '7.99', '30');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('5', 'ice cream', '3.99', '50');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('6', 'burger', '5.99', '40');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('7', 'taco', '2.99', '100');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('8', 'spagetti', '15.00', '50');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('9', 'burrito', '8.00', '30');
INSERT INTO `loyalto`.`items` (`Item_id`, `Item_name`, `Item_price`, `Stocked_units`) VALUES ('10', 'soft drinks', '3.00', '100');

INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('1', '2018-1-24', 'Dine in', 'Completed', '4', '1');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('2', '2018-1-24', 'Delivery ', 'Completed', '5', '2');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('3', '2018-1-24', 'Delivery', 'Completed', '4', '3');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('4', '2018-2-1', 'Dine in ', 'Completed', '8', '4');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('5', '2018-2-2', 'Togo', 'Completed', '4', '5');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('6', '2018-2-2', 'Togo', 'Completed', '5', '6');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('7', '2018-3-3', 'Dine in', 'Completed', '8', '7');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('8', '2018-3-3', 'Dine in', 'Complered', '8', '8');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('9', '2018-3-3', 'Dine in', 'Work in Progress', '5', '9');
INSERT INTO `loyalto`.`order` (`Order_id`, `Order_date`, `Order_type`, `Order_status`, `Employee_id`, `Customer_id`) VALUES ('10', '2018-3-3', 'Togo', 'Work in Progress', '5', '10');

INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('1', '1', '1');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('1', '2', '2');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('3', '2', '3');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('2', '3', '3');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('1', '4', '4');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('4', '5', '5');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('2', '5', '1');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('1', '6', '7');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('2', '7', '8');
INSERT INTO `loyalto`.`order_detail` (`Item_count`, `Order_id`, `Item_id`) VALUES ('2', '8', '10');

INSERT INTO `loyalto`.`review` (`Service_rating`, `Satisfaction_level`, `Comments`, `reviewid`, `Order_id`) VALUES ('10', '10', 'best resturant', '1', '1');
INSERT INTO `loyalto`.`review` (`Service_rating`, `Satisfaction_level`, `Comments`, `reviewid`, `Order_id`) VALUES ('8', '9', 'good food', '2', '2');
INSERT INTO `loyalto`.`review` (`Service_rating`, `Satisfaction_level`, `Comments`, `reviewid`, `Order_id`) VALUES ('3', '4', 'sucks', '3', '3');
INSERT INTO `loyalto`.`review` (`Service_rating`, `Satisfaction_level`, `Comments`, `reviewid`, `Order_id`) VALUES ('7', '6', 'ok', '4', '4');
INSERT INTO `loyalto`.`review` (`Service_rating`, `Satisfaction_level`, `Comments`, `reviewid`, `Order_id`) VALUES ('10', '8', 'pretty good', '5', '5');

INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('5', '1', '1');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('3', '2', '2');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('7', '3', '2');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('8', '4', '3');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('7', '5', '4');
iNSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('8', '5', '5');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('10', '2', '6');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('9', '3', '6');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('4', '1', '1');
INSERT INTO `loyalto`.`food_rating` (`food_rating`, `Review_reviewid`, `Item_id`) VALUES ('4', '1', '7');

INSERT INTO `loyalto`.`supplier` (`Supplier_id`, `SupplierName`) VALUES ('1', 'costco');
INSERT INTO `loyalto`.`supplier` (`Supplier_id`, `SupplierName`) VALUES ('2', 'walmart');
INSERT INTO `loyalto`.`supplier` (`Supplier_id`, `SupplierName`) VALUES ('3', 'target');
INSERT INTO `loyalto`.`supplier` (`Supplier_id`, `SupplierName`) VALUES ('4', 'resturant depot');
INSERT INTO `loyalto`.`supplier` (`Supplier_id`, `SupplierName`) VALUES ('5', 'organic farm');

INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('5', '2017-05-15', '2017-05-15', '10', '1', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('5', '2017-12-14', '2017-12-14', '10', '7', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('1', '2018-02-23', '2018-02-23', '20', '2', '2');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('3', '2017-11-22', '2017-11-22', '20', '3', '2');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('1', '2018-02-24', '2018-02-24', '25', '8', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('1', '2018-02-01', '2018-02-01', '45', '4', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('2', '2017-02-03', '2017-02-03', '10', '5', '3');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('1', '2017-7-22', '2017-7-22', '10', '9', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('5', '2018-12-14', '2018-12-14', '10', '2', '5');
INSERT INTO `loyalto`.`supplier_invoice` (`Item_cost`, `Order_date`, `Delivery_date`, `Item_quantity`, `Item_id`, `Supplier_id`) VALUES ('2', '2018-12-14', '2018-12-14', '10', '6', '3');
