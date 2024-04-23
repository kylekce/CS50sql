UPDATE "users" 
SET "password" = "982c0381c279d139fd221fce974916e7" 
WHERE "username" = "admin";

DELETE FROM "logs"
WHERE "new_password" = "982c0381c279d139fd221fce974916e7";

INSERT INTO "user_logs" ("type")
VALUES ("admin", "e10adc3949ba59abbe56e057f20f883e");
