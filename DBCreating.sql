CREATE OR REPLACE TYPE addressType AS OBJECT
(
street varchar2(20),
city varchar2(20),
postal_code varchar2(8)
)
final
/

CREATE OR REPLACE TYPE phoneType AS OBJECT
(
phoneType varchar2(10),
phoneNumber varchar2(15)
)
final
/

CREATE OR REPLACE TYPE branchType AS OBJECT
(
bID integer,
bAddress addressType,
bPhone phoneType
)
/

CREATE TABLE branchTable OF branchType
/

ALTER TABLE branchTable
ADD(CONSTRAINT bID_key PRIMARY KEY(bID))
/

CREATE OR REPLACE TYPE accountType AS OBJECT
(
accNum integer,
accType varchar2(7),
balance number,
branchR REF branchType,
inRate number,
limitOfFreeOD number,
openDate date,
CONSTRUCTOR FUNCTION accountType(a_accNum integer, a_accType varchar2,
a_balance NUMBER, a_openDate date) RETURN SELF AS RESULT,
MEMBER PROCEDURE insert_records,
MEMBER PROCEDURE display_records);
/

CREATE TABLE accountTable OF accountType;
/

ALTER TABLE accountTable
ADD(CONSTRAINT accountID_key PRIMARY KEY(accNum));
/

CREATE OR REPLACE TYPE BODY accountType AS CONSTRUCTOR FUNCTION accountType(a_accNum integer, a_accType VARCHAR2, a_balance NUMBER, a_openDate date)
RETURN SELF AS RESULT
IS
BEGIN
Dbms_output.put_line('Constructor fired..');
SELF.accNum:=a_accNum;
SELF.accType:=a_accType;
SELF.balance:=a_balance;
SELF.inRate:=0.01;
SELF.limitOfFreeOD:=0.02;
SELF.openDate:=a_openDate;
RETURN;
END;
MEMBER PROCEDURE insert_records
IS
BEGIN
INSERT INTO accountTable
VALUES(accNum, accType, balance, branchR, inRate, limitOfFreeOD, openDate);
END;
MEMBER PROCEDURE display_records
IS
BEGIN
Dbms_output.put_line('Account Number:'||accNum);
Dbms_output.put_line('Account Type:'||accType);
Dbms_output.put_line('Balance:'||balance);
Dbms_output.put_line('In Rate:'||inRate);
Dbms_output.put_line('Limit Of Free OverDraft:'||limitOfFreeOD);
Dbms_output.put_line('Open Date:'||openDate);
END;
END;
/

CREATE OR REPLACE TYPE peopleType AS OBJECT
(
title varchar2(5),
firstName varchar2(25),
surName varchar2(50),
niNum varchar2(9)
)
not final
/

CREATE OR REPLACE TYPE phoneNested AS TABLE OF phoneType
/

CREATE OR REPLACE TYPE customerType UNDER peopleType
(
customerID integer,
customerAddress addressType,
customerPhone phoneNested)
/

CREATE TABLE customerTable of customerType
(
PRIMARY KEY(customerID)
) NESTED TABLE customerPhone STORE AS phoneNestedTable
/

CREATE OR REPLACE TYPE employeeType UNDER peopleType
(
employeeID integer,
employeeAddress addressType,
employeePhone phoneNested,
supervisorId REF employeeType,
employeePosition varchar2(15),
salary number,
bID REF branchType,
joinDate date
)
/

CREATE TABLE employeeTable OF employeeType
(
PRIMARY KEY(employeeID),
CONSTRAINT niNum_Const UNIQUE(niNum)
)NESTED TABLE employeePhone STORE AS phoneEmpNestedTable
/

CREATE TYPE customerAccountType AS OBJECT
(
customerR REF customerType,
accountR REF accountType
)
/

CREATE TABLE customerAccount
(
customerR REF customerType SCOPE IS customerTable,
accountR REF accountType SCOPE IS accountTable
)
/

