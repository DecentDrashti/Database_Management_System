--UPDATE OPERATION:-
--PART-A
--Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT =5000 WHERE ACOUNTNO BETWEEN 103 AND 107

--Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
UPDATE  BORROW SET BNAME='C.G.ROAD' WHERE CNAME='ANIL' 

--Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
UPDATE DEPOSIT SET ACTNO =111 WHERE CNAME='SANDIP' AND AMOUNT='5000'

--Update amount of KRANTI to 7000. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT =7000 WHERE CNAME='KRANTI'

--Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
UPDATE BRANCH SET BNAME='ANDHERI WEST' WHERE BNAME='ANDHERI'

--Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)