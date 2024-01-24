# Simple Python Script

def greet(name):
    """Function to greet a person by name."""
    print(f"Hello, {name}!")

if __name__ == "__main__":
    # Ask the user for their name
    user_name = input("Enter your name: ")

    # Call the greet function
    greet(user_name)
