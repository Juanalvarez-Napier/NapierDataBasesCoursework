SELECT e.firstName, e.surName
FROM employeeTable e
WHERE e.firstName LIKE '%st%'
AND e.employeeAddress.city = 'Edinburgh'
/


SELECT NumeroDeCuentas,
BranchId,
b.bAddress.street AS Street,
b.bAddress.City AS City,
b.bAddress.postal_code AS PostalCode
FROM (
SELECT COUNT(*) AS NumeroDeCuentas,
ca.accountR.branchR.bID AS BranchID
FROM customerAccount ca
WHERE ca.accountR.accType = 'SAVINGS'
GROUP BY ca.accountR.branchR.bID
), branchTable b
WHERE BranchId = b.bID
/



SELECT BranchId,
ac.customerR.firstName AS FirstName,
ac.customerR.surName AS SurName,
BalanceMax AS Balance
FROM (
SELECT MAX(ca.accountR.balance) AS BalanceMax,
ca.accountR.branchR.bID AS BranchId
FROM customerAccount ca
WHERE ca.accountR.accType = 'SAVINGS'
GROUP BY ca.accountR.branchR.bID
), customerAccount ac
WHERE ac.accountR.branchR.bID = BranchId
AND ac.accountR.balance = BalanceMax
/



SELECT ca.accountR.branchR.bAddress.street AS BranchStreet,
ca.accountR.branchR.bAddress.city AS BranchCity,
ca.accountR.branchR.bAddress.postal_code AS BranchPostalCode,
EmployeeStreet,
EmployeeCity,
EmployeePostalCode
FROM customerAccount ca,
(SELECT e.niNum AS EmployeeNiNum,
e.employeeAddress.street AS EmployeeStreet,
e.employeeAddress.city AS EmployeeCity,
e.employeeAddress.postal_code AS EmployeePostalCode
FROM employeeTable e
WHERE e.supervisorId.employeePosition = 'MANAGER')
WHERE ca.customerR.niNum = EmployeeNiNum
/



SELECT BranchId,
ac.customerR.firstName AS FirstName,
ac.customerR.surName AS SurName,
FODMax AS FreeOverDraft
FROM (
SELECT MAX(ca.accountR.limitOfFreeOD) AS FODMax,
ca.accountR.branchR.bID AS BranchId
FROM customerAccount ca
WHERE ca.accountR.accType = 'CURRENT'
GROUP BY ca.accountR.branchR.bID
), customerAccount ac
WHERE ac.accountR.branchR.bID = BranchId
AND ac.accountR.limitOfFreeOD = FODMax
/


SELECT ct.firstName,
ct.surName,
tp.phoneType,
tp.phoneNumber
FROM customerTable ct,
table(ct.customerPhone) tp
WHERE customerId IN
(
SELECT c.customerId
FROM customerTable c,
table(c.customerPhone) ta,
(
SELECT COUNT(*) AS NUMOFPHONES,
p.customerId AS CustomerId2
FROM customerTable p, table(p.customerPhone) t
WHERE t.phoneType LIKE 'MOBILE%'
GROUP BY p.customerid
HAVING COUNT(*) >= 2
)
WHERE ta.phoneNumber LIKE '%0750%'
AND c.customerId = CustomerId2
)
/


SELECT COUNT(*)
FROM employeeTable
WHERE DEREF(supervisorId).surName = 'Smith'
AND DEREF(DEREF(supervisorId).supervisorId).surName = 'Jones'
/


ALTER TYPE employeeType
ADD MEMBER FUNCTION giveAward
RETURN VARCHAR2 CASCADE;
/
CREATE OR REPLACE TYPE BODY employeeType AS
MEMBER FUNCTION giveAward RETURN VARCHAR2 IS
sal VARCHAR2(10);
BEGIN
sal:= 'S/N';
IF MONTHS_BETWEEN(CURRENT_DATE, joinDate) >= 144 THEN
sal:= 'GOLD';
END IF;
IF MONTHS_BETWEEN(CURRENT_DATE, joinDate) < 144 AND MONTHS_BETWEEN(CURRENT_DATE, joinDate) >= 96 THEN
sal:= 'SILVER';
END IF;
IF MONTHS_BETWEEN(CURRENT_DATE, joinDate) < 96 AND MONTHS_BETWEEN(CURRENT_DATE, joinDate) >= 48 THEN
sal:= 'BRONZE';
END IF;
RETURN sal;
END giveAward;
END;
/
