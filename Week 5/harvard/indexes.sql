CREATE INDEX "search_semester" ON "courses" ("semester");

CREATE INDEX "search_department" ON "courses" ("department")
WHERE "semester" = 'Fall 2023' OR "semester" = 'Spring 2024';

CREATE INDEX "search_title" ON "courses" ("title");