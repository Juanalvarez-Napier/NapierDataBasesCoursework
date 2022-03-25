INSERT INTO branchtable VALUES
(
001,
addressType('Low Street', 'Leeds', 'LE34YH'),
phoneType('PRINCIPAL', '000000000000001')
)
/

INSERT INTO branchtable VALUES
(
002,
addressType('High Street', 'Liverpool', 'LI34UJ'),
phoneType('PRINCIPAL', '000000000000002')
)
/

INSERT INTO branchtable VALUES
(
003,
addressType('Scottish Street', 'Inverness', 'IV29TG'),
phoneType('PRINCIPAL', '000000000000003')
)
/

INSERT INTO branchtable VALUES
(
004,
addressType('English Street', 'London', 'N11EE'),
phoneType('PRINCIPAL', '000000000000004')
)
/

INSERT INTO branchtable VALUES
(
005,
addressType('Roger Road', 'Rochester', 'RO45GF'),
phoneType('PRINCIPAL', '000000000000005')
)
/

INSERT INTO branchtable VALUES
(
006,
addressType('Round Street', 'Morpeth', 'MO84RF'),
phoneType('PRINCIPAL', '000000000000004')
)
/

INSERT INTO branchtable VALUES
(
007,
addressType('Line Street', 'Newcastle', 'NC34YH'),
phoneType('PRINCIPAL', '000002025000003')
)
/

INSERT INTO branchtable VALUES
(
008,
addressType('Highland Street', 'Aberdeen', 'AB98RF'),
phoneType('PRINCIPAL', '000000085210002')
)
/

INSERT INTO branchtable VALUES
(
009,
addressType('Pastry Street', 'Lands End', 'LE65FG'),
phoneType('PRINCIPAL', '000007415000001')
)
/

INSERT INTO branchtable VALUES
(
010,
addressType('Crossing Drive', 'Folkeston', 'FK54RF'),
phoneType('PRINCIPAL', '007524000000005')
)
/

INSERT INTO branchtable VALUES
(
011,
addressType('Loosers Road', 'Hull', 'HU47HG'),
phoneType('PRINCIPAL', '458600000000001')
)
/

INSERT INTO branchtable VALUES
(
012,
addressType('Champions Road', 'Manchester', 'M56QA'),
phoneType('PRINCIPAL', '001234000000002')
)
/

INSERT INTO branchtable VALUES
(
013,
addressType('Premier Road', 'Bormouth', 'BO45IK'),
phoneType('PRINCIPAL', '000085690000003')
)
/

INSERT INTO branchtable VALUES
(
014,
addressType('Villa Street', 'Birgimham', 'B65RF'),
phoneType('PRINCIPAL', '987400000000004')
)
/

INSERT INTO branchtable VALUES
(
015,
addressType('High Mews', 'Derby', 'DY58JH'),
phoneType('PRINCIPAL', '065840000000005')
)
/

INSERT INTO branchtable VALUES
(
016,
addressType('Close Mews', 'Middlesborough', 'MI28JH'),
phoneType('PRINCIPAL', '000358700000001')
)
/

INSERT INTO branchtable VALUES
(
017,
addressType('Duque Road', 'Peterborough', 'PE49JG'),
phoneType('PRINCIPAL', '009512400000003')
)
/

INSERT INTO branchtable VALUES
(
018,
addressType('Queen Street', 'Belfast', 'BE34WS'),
phoneType('PRINCIPAL', '000845720000002')
)
/

INSERT INTO branchtable VALUES
(
019,
addressType('King Street', 'Cardiff', 'C74RF'),
phoneType('PRINCIPAL', '004400000000002')
)
/

INSERT INTO branchtable VALUES
(
020,
addressType('Peter Street', 'Bath', 'BT56UJ'),
phoneType('PRINCIPAL', '003400000000004')
)
/

INSERT INTO branchtable VALUES
(
021,
addressType('Princes Street', 'Edinburgh', 'EH14RT'),
phoneType('PRINCIPAL', '003500000000001')
)
/

INSERT INTO branchtable VALUES
(
022,
addressType('Buckanan Street', 'Glasgow', 'G11AA'),
phoneType('PRINCIPAL', '007800000000005')
)
/






INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1010',
'SAVINGS',
'3122.22',
TO_DATE('2020-06-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 001)
WHERE accNum = 1010
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1020',
'CURRENT',
'122.22',
TO_DATE('2020-07-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 002)
WHERE accNum = 1020
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1030',
'CURRENT',
'22.22',
TO_DATE('2020-05-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 003)
WHERE accNum = 1030
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1040',
'SAVINGS',
'987.65',
TO_DATE('2020-01-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 004)
WHERE accNum = 1040
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1050',
'CURRENT',
'8520.90',
TO_DATE('2019-07-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1050
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1060',
'SAVINGS',
'7895.22',
TO_DATE('2018-06-21 16:45:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 006)
WHERE accNum = 1060
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1070',
'CURRENT',
'58.23',
TO_DATE('2020-10-1 12:12:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 022)
WHERE accNum = 1070
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1080',
'CURRENT',
'282.22',
TO_DATE('2020-04-1 06:12:57', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 008)
WHERE accNum = 1080
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1090',
'SAVINGS',
'1987.65',
TO_DATE('2017-05-14 09:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1090
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1100',
'CURRENT',
'19678.90',
TO_DATE('2010-07-21 11:22:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 022)
WHERE accNum = 1100
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1110',
'CURRENT',
'9678.90',
TO_DATE('2020-07-21 11:22:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 010)
WHERE accNum = 1110
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1120',
'SAVINGS',
'3542.22',
TO_DATE('2019-06-25 16:32:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1120
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1130',
'CURRENT',
'2522.22',
TO_DATE('2020-07-29 15:45:25', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 012)
WHERE accNum = 1130
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1140',
'CURRENT',
'227.28',
TO_DATE('2020-07-18 09:21:54', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 013)
WHERE accNum = 1140
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1150',
'SAVINGS',
'10987.65',
TO_DATE('2020-05-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1150
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1160',
'CURRENT',
'868.90',
TO_DATE('2020-06-21 15:12:37', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1160
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1170',
'SAVINGS',
'31222.22',
TO_DATE('2020-07-15 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 016)
WHERE accNum = 1170
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1180',
'CURRENT',
'12.22',
TO_DATE('2020-07-25 12:52:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1180
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1190',
'CURRENT',
'422.22',
TO_DATE('2020-05-26 10:12:08', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 022)
WHERE accNum = 1190
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1200',
'SAVINGS',
'45862.65',
TO_DATE('2020-06-21 17:21:07', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 019)
WHERE accNum = 1200
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1210',
'CURRENT',
'154.90',
TO_DATE('2020-07-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 020)
WHERE accNum = 1210
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1220',
'SAVINGS',
'65894.90',
TO_DATE('2016-12-25 14:25:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE accNum = 1220
/

INSERT INTO ACCOUNTTABLE VALUES
(
accountType ('1230',
'CURRENT',
'254.90',
TO_DATE('2015-07-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS'))
)
/

UPDATE ACCOUNTTABLE SET
branchR= (SELECT REF(b) FROM branchTable b WHERE b.bID = 022)
WHERE accNum = 1230
/





INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Adam',
'Williams',
'NH564534U',
9001,
addressType('1 Princess Street', 'Edinburgh', 'EH11AA'),
phoneNested(phoneType('HOME', '000000000009004'),phoneType('MOBILE1','075000000009005'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Gabriela',
'Vargas',
'NR100376J',
9002,
addressType('1 Buchanan Street', 'Glasgow', 'G11AA'),
phoneNested(phoneType('HOME', '000000000009002'),phoneType('MOBILE1','000000000009003'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Jack',
'Smith',
'PA449819Q',
9003,
addressType('3 Last Road', 'Queensferry', 'QU45TG'),
phoneNested(phoneType('HOME', '000000000009001'),phoneType('MOBILE1','075000000009006'),phoneType('MOBILE2','000000000009016'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Anna',
'Bain',
'PF456679L',
9004,
addressType('1 Main Square', 'Aberdeen', 'AB45TG'),
phoneNested(phoneType('HOME', '000000000009009'),phoneType('MOBILE1','000000000009008'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Liam',
'Collin',
'SD345678M',
9005,
addressType('3 Beautiful Street', 'Inverness', 'IV34PO'),
phoneNested(phoneType('HOME', '000000000009007'),phoneType('MOBILE1','000000000009017'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Alison',
'William',
'WS345904D',
9006,
addressType('23 Ugly Street', 'Newcastle', 'NE34IO'),
phoneNested(phoneType('HOME', '000000000009012'),phoneType('MOBILE1','000000000009013'),phoneType('MOBILE2','075000000009026'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Jhon',
'Clark',
'TF543287Z',
9007,
addressType('12 Huge Road', 'Leeds', 'LE348TG'),
phoneNested(phoneType('HOME', '000000000009014'),phoneType('MOBILE1','000000000009015'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Virginia',
'Black',
'OK765432Q',
9008,
addressType('5 My street', 'Edinburgh', 'EH506TG'),
phoneNested(phoneType('HOME', '000000000009022'),phoneType('MOBILE1','075000000009023'),phoneType('MOBILE2','000000000009036'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Alex',
'Jones',
'RE458296S',
9009,
addressType('345 Little Street', 'Liverpool', 'L345PD'),
phoneNested(phoneType('HOME', '000000000008003'),phoneType('MOBILE1','000000000008004'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Leo',
'Scott',
'YH564534U',
9010,
addressType('1 Ashgrove', 'Bathgate', 'EH471PL'),
phoneNested(phoneType('HOME', '000007852009004'),phoneType('MOBILE1','075004732009005'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Norah',
'Alvarez',
'ED345698H',
9011,
addressType('2 Ashgrove', 'Bathgate', 'EH472PL'),
phoneNested(phoneType('HOME', '000048600009002'),phoneType('MOBILE1','000358700009003'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Andy',
'Smith',
'AP449819D',
9012,
addressType('5 Elisabeth Drive', 'Bathgate', 'EH473DF'),
phoneNested(phoneType('HOME', '075000000014001'),phoneType('MOBILE1','075000000009006'),phoneType('MOBILE2','000040000009026'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Irene',
'Morales',
'SS564321P',
9013,
addressType('1 Main Street', 'Armadale', 'EH483RT'),
phoneNested(phoneType('HOME', '000000450009009'),phoneType('MOBILE1','075000000009208'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Pedro',
'Suarez',
'PB453287X',
9014,
addressType('1 Ferry Road', 'Glasgow', 'G67TG'),
phoneNested(phoneType('HOME', '000078540009007'),phoneType('MOBILE1','000000450009017'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Carol',
'Patersson',
'XS345904A',
9015,
addressType('2 Castle Street', 'Morpeth', 'MP56TG'),
phoneNested(phoneType('HOME', '000789300009012'),phoneType('MOBILE1','000000159009013'),phoneType('MOBILE2','075000073009026'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Alan',
'Patersson',
'RA543287H',
9016,
addressType('3 Castle Street', 'Morpeth', 'MP56TG'),
phoneNested(phoneType('HOME', '075000008309014'),phoneType('MOBILE1','000035860009015'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'John',
'Teacher',
'OK765432Q',
9017,
addressType('1 Lejos', 'Los Collados', 'CO45TG'),
phoneNested(phoneType('HOME', '000555500009022'),phoneType('MOBILE1','075000660009023'),phoneType('MOBILE2','000033333009036'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Nury',
'Gomez',
'PO458296C',
9018,
addressType('1 Los Chorros', 'Riopar', 'RI49PF'),
phoneNested(phoneType('HOME', '000011111008003'),phoneType('MOBILE1','000022222208004'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Denise',
'Scott',
'FD752159T',
9019,
addressType('1 Cerca', 'Los Collados', 'CO46RJ'),
phoneNested(phoneType('HOME', '000557700009022'),phoneType('MOBILE1','075000880009023'),phoneType('MOBILE2','000087412009036'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Carmen',
'Lopez',
'SX348720S',
9000,
addressType('1 Molinete', 'Arroyofrio', 'RI46AA'),
phoneNested(phoneType('HOME', '008011222008003'),phoneType('MOBILE1','003022211108004'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Gloria',
'Fuertes',
'ME858720B',
9021,
addressType('1 Cuba', 'Caribe', 'CA75AA'),
phoneNested(phoneType('HOME', '008011233308003'),phoneType('MOBILE1','003022551108004'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mrs',
'Alia',
'Stark',
'ZZ348720Y',
9022,
addressType('1 Square', 'Invernalia', 'IV46CO'),
phoneNested(phoneType('HOME', '008011224568003'),phoneType('MOBILE1','003022753108004'))
)
)
/

INSERT INTO customerTable VALUES
(
customerType
(
'Mr',
'Felipe',
'Romero',
'XS348720S',
9023,
addressType('1 Molinete', 'Arroyofrio', 'RI46AA'),
phoneNested(phoneType('HOME', '008011222008003'),phoneType('MOBILE1','003022211108004'))
)
)
/





INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Tim',
'Burton',
'FD345678Z',
8001,
addressType('2 Princes Street', 'Edinburgh', 'EH43TG'),
phoneNested(phoneType('HOME', '000000000008001'),phoneType('MOBILE1','000000000008002')),
null,
'CEO',
800500,
null,
TO_DATE('1980-05-21 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 021)
WHERE employeeID = 8001
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Alex',
'Jones',
'N1002',
8002,
addressType('2 Normal Street', 'Glasgow', 'G43TG'),
phoneNested(phoneType('HOME', '000000000008003'),phoneType('MOBILE1','000000000008004')),
null,
'MANAGER',
100000,
null,
TO_DATE('1990-02-22 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 001),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8001)
WHERE employeeID = 8002
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Carmen',
'Machin',
'NA541011P',
8003,
addressType('5 Buchanan Street', 'Glasgow', 'G13DF'),
phoneNested(phoneType('HOME', '000000000008005'),phoneType('MOBILE1','000000000008006')),
null,
'Accountant',
50000,
null,
TO_DATE('2000-07-22 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 001),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8003
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Maria',
'Smith',
'DR875632G',
8004,
addressType('5 Buchanan Street', 'Glasgow', 'G13DF'),
phoneNested(phoneType('HOME', '000000000008007'),phoneType('MOBILE1','000000000008008')),
null,
'MID-Management',
75000,
null,
TO_DATE('1995-07-22 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 022),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8004
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Peter',
'Rabit',
'DH454721S',
8005,
addressType('20 Glasgow Road', 'Glasgow', 'G89DF'),
phoneNested(phoneType('HOME', '000000000008009'),phoneType('MOBILE1','000000000008010')),
null,
'Accountant',
50000,
null,
TO_DATE('2001-07-22 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 022),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8005
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Mystery',
'Jones',
'DP158439F',
8006,
addressType('4 Princess Street', 'Edinburgh', 'EH13PD'),
phoneNested(phoneType('HOME', '005820000008003'),phoneType('MOBILE1','000065000008004')),
null,
'Clerck',
25000,
null,
TO_DATE('2015-08-15 16:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 021),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8006
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Astam',
'Williams',
'NH564534U',
8007,
addressType('1 Princess Street', 'Edinburgh', 'EH11AA'),
phoneNested(phoneType('HOME', '000000000009004'),phoneType('MOBILE1','075000000009005')),
null,
'Clerck',
25000,
null,
TO_DATE('2019-08-19 09:42:17', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 008),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8007
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Gabriela',
'Vargas',
'NR100376J',
8008,
addressType('1 Buchanan Street', 'Glasgow', 'G11AA'),
phoneNested(phoneType('HOME', '000000000009002'),phoneType('MOBILE1','000000000009003')),
null,
'MANAGER',
50000,
null,
TO_DATE('2018-02-25 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 021),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8001)
WHERE employeeID = 8008
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Leo',
'Scott',
'YH564534U',
8009,
addressType('1 Ashgrove', 'Bathgate', 'EH471PL'),
phoneNested(phoneType('HOME', '000007852009004'),phoneType('MOBILE1','075004732009005')),
null,
'Clerck',
25000,
null,
TO_DATE('2019-02-25 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 022),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8008)
WHERE employeeID = 8009
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'April',
'Rivers',
'FG183762D',
8010,
addressType('1 Polar', 'Sunnyside', 'G471PL'),
phoneNested(phoneType('HOME', '000015987009004'),phoneType('MOBILE1','075004357419005')),
null,
'Clerck',
25000,
null,
TO_DATE('2017-05-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 015),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8010
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Dean',
'Doors',
'KJ183762X',
8011,
addressType('1 Rotting', 'Darkside', 'RO34LK'),
phoneNested(phoneType('HOME', '120015987009004'),phoneType('MOBILE1','075009587439005')),
null,
'Clerck',
25000,
null,
TO_DATE('2020-02-25 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 006),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8011
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Julia',
'Walters',
'PS197355V',
8012,
addressType('1 Rotting', 'Darkside', 'RO34LK'),
phoneNested(phoneType('HOME', '220015987058004'),phoneType('MOBILE1','045009586539005')),
null,
'Accountant',
50000,
null,
TO_DATE('2019-11-20 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 007),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8012
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Juan',
'Spacing',
'PA197355B',
8013,
addressType('1111 Long Street', 'London', 'NE34ED'),
phoneNested(phoneType('HOME', '004415987058004'),phoneType('MOBILE1','004409586539005')),
null,
'Clerk',
25000,
null,
TO_DATE('2019-05-10 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 008),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8013
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'John',
'Roberts',
'AP197355C',
8014,
addressType('22 Short Street', 'London', 'NW34ED'),
phoneNested(phoneType('HOME', '123451598705800'),phoneType('MOBILE1','189409586539005')),
null,
'Accountant',
50000,
null,
TO_DATE('2019-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 009),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8002)
WHERE employeeID = 8014
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Kia',
'Knightly',
'KK561489K',
8015,
addressType('22 Short Street', 'Glasgow', 'G35ED'),
phoneNested(phoneType('HOME', '951736598705800'),phoneType('MOBILE1','951874586539005')),
null,
'Accountant',
50000,
null,
TO_DATE('2008-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 010),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8015
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Pamela',
'Anderson',
'JJ561489J',
8016,
addressType('55 Your Street', 'Glasgow', 'G48HD'),
phoneNested(phoneType('HOME', '951951498705800'),phoneType('MOBILE1','951852147539005')),
null,
'Clerck',
25000,
null,
TO_DATE('2019-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 011),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8016
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Donald',
'Johnson',
'AA569549A',
8017,
addressType('8 My Street', 'Glasgow', 'G98HD'),
phoneNested(phoneType('HOME', '918461498705800'),phoneType('MOBILE1','528452147539005')),
null,
'Clerck',
25000,
null,
TO_DATE('2018-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 012),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8017
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mr',
'Nick',
'Cleg',
'UU569549U',
8018,
addressType('8 Street', 'Edinburgh', 'EH98HD'),
phoneNested(phoneType('HOME', '258741498705800'),phoneType('MOBILE1','756852147539005')),
null,
'Clerck',
25000,
null,
TO_DATE('2017-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 013),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8018
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Erin',
'Robins',
'WW569549W',
8019,
addressType('8 Medows', 'Edinburgh', 'EH95HD'),
phoneNested(phoneType('HOME', '356984498705800'),phoneType('MOBILE1','687152147539005')),
null,
'Clerck',
25000,
null,
TO_DATE('2016-01-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 014),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8019
/

INSERT INTO employeeTable VALUES
(
employeeType
(
'Mrs',
'Erin',
'Robins',
'LL569549L',
8020,
addressType('8 Medow Park', 'Edinburgh', 'EH93HD'),
phoneNested(phoneType('HOME', '456874498705800'),phoneType('MOBILE1','852472147539005')),
null,
'Accountant',
50000,
null,
TO_DATE('2019-02-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS')
)
)
/

UPDATE employeeTable SET
bID = (SELECT REF(b) FROM branchTable b WHERE b.bID = 015),
supervisorId = (SELECT REF(e) FROM employeeTable e WHERE e.employeeID = 8004)
WHERE employeeID = 8020
/







INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9001
AND a.accnum = 1010
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9002
AND a.accnum = 1020
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9003
AND a.accnum = 1030
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9004
AND a.accnum = 1040
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9005
AND a.accnum = 1050
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9006
AND a.accnum = 1060
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9007
AND a.accnum = 1070
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9008
AND a.accnum = 1080
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9009
AND a.accnum = 1090
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9010
AND a.accnum = 1100
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9011
AND a.accnum = 1110
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9012
AND a.accnum = 1120
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9013
AND a.accnum = 1130
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9014
AND a.accnum = 1140
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9015
AND a.accnum = 1150
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9016
AND a.accnum = 1160
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9017
AND a.accnum = 1170
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9018
AND a.accnum = 1180
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9019
AND a.accnum = 1190
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9000
AND a.accnum = 1200
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9021
AND a.accnum = 1220
/

INSERT INTO customerAccount
SELECT REF(c), REF(a)
FROM customerTable c, accountTable a
WHERE c.customerid = 9022
AND a.accnum = 1230
/