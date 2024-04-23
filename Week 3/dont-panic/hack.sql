UPDATE "users" 
SET "password" = "982c0381c279d139fd221fce974916e7" 
WHERE "username" = "admin";

DELETE FROM "logs"
WHERE "new_password" = "982c0381c279d139fd221fce974916e7";

INSERT INTO "user_logs" ("username", "action", "timestamp")
VALUES ('admin', 'new_password', CURRENT_TIMESTAMP);