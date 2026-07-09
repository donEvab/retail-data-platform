from database import fetch_all


def test_connection():
    result = fetch_all("SELECT version();")

    print("Connected successfully!")
    print(result[0][0])


if __name__ == "__main__":
    test_connection()