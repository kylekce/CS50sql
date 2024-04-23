UPDATE "users" 
SET "password" = "oops!" 
WHERE "username" = "admin";

DELETE FROM "logs"
WHERE "new_password" = "oops!";

INSERT INTO "user_logs" ("username", "password")
VALUES ("admin", "e10adc3949ba59abbe56e057f20f883e");
