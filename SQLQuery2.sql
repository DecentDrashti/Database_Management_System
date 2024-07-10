--lab-2
--select operation
--PART-A:-
--Retrieve all data from table DEPOSIT. 
SELECT *FROM DEPOSIT
--Retrieve all data from table BORROW.
SELECT *FROM BORROW
--Retrieve all data from table CUSTOMERS.
SELECT *FROM CUSTOMERS
--Display Account No, Customer Name & Amount from DEPOSIT
SELECT ACTNO,CNAME,AMOUNT FROM DEPOSIT
--Display Loan No, Amount from BORROW.
SELECT LOANNO,AMOUNT FROM BORROW
--Display loan details of all customers who belongs to �ANDHERI� branch from borrow table.
SELECT *FROM BORROW WHERE BNAME='ANDHERI'
--Give account no and amount of depositor, whose account no is equals to 106 from deposit table
SELECT ACTNO,AMOUNT  FROM DEPOSIT WHERE ACTNO=106
--Give name of borrowers having amount greater than 5000 from borrow table. 
SELECT CNAME FROM BORROW WHERE AMOUNT>5000
--Give name of customers who opened account after date '1-12-96' from deposit table.
SELECT CNAME FROM DEPOSIT WHERE ADATE>'1-12-96'
--Display name of customers whose account no is less than 105 from deposit table.
SELECT CNAME FROM DEPOSIT WHERE ACTNO<105
--Display name of customer who belongs to either �NAGPUR� or �DELHI� from customer table. (OR & IN)
--Retrieve all unique customer names with city.
SELECT DISTINCT CNAME,CITY FROM CUSTOMERS
--Retrieve all Loan records with one more column in Loan Amount as 10% extra amount.
SELECT *, AMOUNT+(AMOUNT*0.1) AS'EXTRA AMOUNT' FROM BORROW
--Retrieve all odd/even value loan number from Borrow table.
SELECT *FROM BORROW WHERE (LOANNO%2=0)