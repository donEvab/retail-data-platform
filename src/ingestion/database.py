from db_connection import get_connection


def execute_sql(query: str):
    with get_connection() as connection:
        with connection.cursor() as cursor:
            cursor.execute(query)


def fetch_all(query: str):
    with get_connection() as connection:
        with connection.cursor() as cursor:
            cursor.execute(query)
            return cursor.fetchall()