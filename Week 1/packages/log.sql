
-- *** The Lost Letter ***
SELECT "id", "contents", "from_address_id" 
FROM "packages" 
WHERE "from_address_id" = (
    SELECT "id" 
    FROM "addresses" 
    WHERE "address" = '900 Somerville Avenue'
);
-- Package: "id" = 384, "contents" = "Congratulatory letter"

SELECT "type"
FROM "addresses"
WHERE "id" = (
    SELECT "from_address_id"
    FROM "packages"
    WHERE "id" = 384
);
-- Type: "type" = "residential"

SELECT "address"
FROM "addresses"
WHERE "id" = (
    SELECT "to_address_id"
    FROM "packages"
    WHERE "id" = 384
);
-- Address: "address" = "2 Finnigan Street"

-- *** The Devious Delivery ***
SELECT "id", "contents"
FROM "packages"
WHERE "from_address_id" IS NULL;
-- Package: "id" = 5098, "contents" = "Duck debugger"

SELECT "type"
FROM "addresses"
WHERE "id" = (
    SELECT "from_address_id"
    FROM "packages"
    WHERE "id" = 5098
);

-- *** The Forgotten Gift ***

