import mysql.connector
from mysql.connector import Error
class database():
    def __init__(self):
        self.conn = self.connect()
        self.create_tables()
    def connect(self):
        try:
            conn = mysql.connector.connect(
                host="localhost",
                user="root",
                password="admin",
                database="profetrack"
            )
            return conn
        except Error as e:
            print(f"Error in connection to database: {e}")

    def create_tables(self):
        try:
            with open('ProfeTrack.sql','r') as file:
                schema_sql = file.read()

            commands = schema_sql.split(';')
            for command in commands:
                if command.strip() != '':
                    self.conn.cursor().execute(command)
            self.conn.close()

        except Error as e:
            print(f"Error in creating tables: {e}")
        finally:
            if self.conn.is_connected():
                self.conn.close()

if __name__ == '__main__':
    database()