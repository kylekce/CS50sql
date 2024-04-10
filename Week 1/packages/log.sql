
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
-- Type: "type" = "Residential"

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

SELECT "address", "type"
FROM "addresses"
WHERE "id" = (
    SELECT "address_id"
    FROM "scans"
    WHERE "id" = 5098 AND "action" = 'Drop'
);
-- Address: "address" = "123 Sesame Street", "type" = "Residential"

-- *** The Forgotten Gift ***
SELECT "id", "contents", "from_address_id" 
FROM "packages" 
WHERE "from_address_id" = (
    SELECT "id" 
    FROM "addresses" 
    WHERE "address" = '109 Tileston Street'
);
-- Package: "id" = 9523, "contents" = "Flowers", "from_address_id" = 9873

SELECT "name"
FROM "drivers"
WHERE "id" = (
    SELECT "driver_id"
    FROM "scans"
    WHERE "package_id" = 9523
);
-- Driver: "name" = "Maegan"