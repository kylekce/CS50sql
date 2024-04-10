
-- *** The Lost Letter ***
SELECT "id", "contents" 
FROM "packages" 
WHERE "from_address_id" = (
    SELECT "id" 
    FROM "addresses" 
    WHERE "address" = '900 Somerville Avenue'
);

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***

