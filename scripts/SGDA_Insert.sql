INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('jis','jis123','jismariya','tom','kasaragod','904869099','jis@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('sulu','sulu123','suhaila','t','kasaragod','904869091','sulu@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('susmitha','sus123','susmitha','john','kasaragod','90486901','sus@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('jojo','123','joice','mathew','ernakulam','99869099','jojo@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('anu','anu123','jismariya','t','ernakulam','9048691231','anu@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('jyothu','jyothu123','jyothis','tom','kasaragod','904869099','jyothu@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('jomin','jomin123','jomin','tom','kasaragod','904869099','jomin@gmail.com','viewer');
INSERT INTO SGDA_USER_DETAILS(user_name,user_password,first_name,last_name,user_address,user_mobile,user_email,user_catagory) 
	VALUES('jose','j123','jose','m','kasaragod','90486899','jose@gmail.com','viewer');



INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345623,12312,'8:00:00','9:00:00',3100,900,4000);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345633,12313,'8:00:00','9:00:00',3200,945,3200);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345643,12314,'8:00:00','9:00:00',3852,1148,5100);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345653,12315,'8:00:00','9:00:00',2700,810,3600);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345663,12316,'8:00:00','9:00:00',2750,810,3600);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345673,12317,'8:00:00','9:00:00',2912,855,3800);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345683,12318,'8:00:00','9:00:00',2925,855,3800);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(345693,12319,'8:00:00','9:00:00',2777,810,3600);
INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(346703,12320,'8:00:00','9:00:00',3900,1148,5100);

UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345623' AND transformer_id = '12312';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345633' AND transformer_id = '12313';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345643' AND transformer_id = '12314';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345653' AND transformer_id = '12315';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345663' AND transformer_id = '12316';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345673' AND transformer_id = '12317';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345683' AND transformer_id = '12318';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '345693' AND transformer_id = '12319';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '346703' AND transformer_id = '12320';

UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '0' WHERE consumer_id = '345623' AND transformer_id = '12312';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '0' WHERE consumer_id = '345633' AND transformer_id = '12313';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '100' WHERE consumer_id = '345643' AND transformer_id = '12314';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '90' WHERE consumer_id = '345653' AND transformer_id = '12315';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '40' WHERE consumer_id = '345663' AND transformer_id = '12316';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '33' WHERE consumer_id = '345673' AND transformer_id = '12317';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '20' WHERE consumer_id = '345683' AND transformer_id = '12318';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '13' WHERE consumer_id = '345693' AND transformer_id = '12319';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '52' WHERE consumer_id = '346703' AND transformer_id = '12320';

UPDATE SGDA_POWER_ANALYZE_DATA SET total_power_cosumption = '2200' WHERE consumer_id = '345623' AND transformer_id = '12312';
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '55' WHERE consumer_id = '345633' AND transformer_id = '12313';

INSERT INTO SGDA_POWER_ANALYZE_DATA(consumer_id,transformer_id,start_time,end_time,total_power_cosumption , technical_loss ,total_power_generation) 
	VALUES(3456000,12312,'8:00:00','9:00:00',3100,900,4000);
UPDATE SGDA_POWER_ANALYZE_DATA SET non_technical_loss = '200' WHERE consumer_id = '3456000' AND transformer_id = '12312';
UPDATE SGDA_POWER_ANALYZE_DATA SET date = '2020-01-01' WHERE consumer_id = '3456000' AND transformer_id = '12312';