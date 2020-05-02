CREATE DATABASE SGDANALYSER;

CREATE TABLE SGDA_USER_DETAILS (user_name varchar(6) primary key, user_password varchar(10) not null,
    first_name varchar(10) not null,last_name varchar(10),user_address varchar(50),user_mobile varchar(10) not null,user_email varchar(20) 
	not null, user_catagory varchar(10));

CREATE TABLE SGDA_POWER_ANALYZE_DATA (consumer_id varchar(15) primary key, transformer_id varchar(15) not null,start_time time,end_time time,
	total_power_cosumption varchar(10) not null, technical_loss varchar(10) not null,total_power_generation varchar(10) not null);

CREATE TABLE SGDA	
	
ALTER TABLE SGDA_POWER_ANALYZE_DATA
  ADD date date NOT NULL
    AFTER transformer_id;

ALTER TABLE SGDA_POWER_ANALYZE_DATA
  ADD non_technical_loss varchar(10) NOT NULL
    AFTER technical_loss;
