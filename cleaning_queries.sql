-- Step 1: Explore the table
SELECT TOP 50 *
FROM Person.Person;

-- Step 2: Check for invalid EmailPromotion values
SELECT DISTINCT EmailPromotion
FROM Person.Person
WHERE EmailPromotion >= 10;

-- Step 3: Check existing EmailPromotion values
SELECT DISTINCT EmailPromotion
FROM Person.Person;

-- Step 4: Check for missing names
SELECT *
FROM Person.Person
WHERE FirstName IS NULL
   OR LastName IS NULL;

-- Step 5: Standardize name formatting
SELECT 
    BusinessEntityID,
    UPPER(TRIM(FirstName)) AS CleanFirstName,
    UPPER(TRIM(LastName)) AS CleanLastName
FROM Person.Person;

-- Step 6: Check for duplicate BusinessEntityID values
SELECT 
    BusinessEntityID,
    COUNT(*) AS DuplicateCount
FROM Person.Person
GROUP BY BusinessEntityID
HAVING COUNT(*) > 1;
