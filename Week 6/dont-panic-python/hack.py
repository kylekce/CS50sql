from cs50 import SQL

db = SQL("sqlite:///dont-panic.db")

password = str(input("Enter the new admin password: "))

if password:
    db.execute(
        """
            UPDATE users
            SET "password" = ?
            WHERE username = 'admin'
        """,
        password,
    )

    print("Hacked!")
else:
    print("Something went wrong.")
