--UPDATE OPERATION:-
--PART-A
--Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 WHERE AMOUNT=3000

--Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE  BORROW SET BNAME='C.G.ROAD' WHERE CNAME='ANIL' 

--Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET ACTNO =111 WHERE CNAME='SANDIP' AND AMOUNT='5000'

--Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT =7000 WHERE CNAME='KRANTI'

--Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'

--Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
UPDATE DEPOSIT SET BNAME='NEHRU PALACE' WHERE CNAME='MEHUL'

--Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT =5000 WHERE ACTNO BETWEEN 103 AND 107

--Update ADATE of ANIL to 1-4-95. (Use Deposit Table)
UPDATE DEPOSIT SET ADATE='1-4-95' WHERE CNAME='ANIL'

--Update the amount of MINU to 10000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=10000 WHERE CNAME='MINU'

--Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=5000 , ADATE='1-4-96' WHERE CNAME='PRAMOD'


--PART-B:-
--Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW SET AMOUNT=AMOUNT+(AMOUNT*0.01)

--Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT=AMOUNT+(AMOUNT*0.02)


--PART-C:-
--Update amount of loan no 321 to NULL. (Use Borrow Table)
UPDATE BORROW SET AMOUNT=NULL WHERE LOANNO=321

--Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW SET BNAME=NULL WHERE CNAME='KRANTI'

--Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE AMOUNT IS NULL

--Display the Borrowers whose having branch. (Use Borrow Table)
SELECT CNAME FROM BORROW WHERE BNAME IS NOT NULL

--Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.(Use Borrow Table)
UPDATE BORROW SET AMOUNT=5000 ,BNAME='VRCE' ,CNAME='DARSHAN' WHERE LOANNO=481

--Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less than 2000.
UPDATE DEPOSIT SET ADATE='01-01-2021' WHERE AMOUNT<2000

--Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is 110.
UPDATE DEPOSIT SET ADATE=NULL ,BNAME='ANDHERI' WHERE ACTNO=110