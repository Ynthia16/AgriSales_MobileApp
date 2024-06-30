# Project README

## Introduction
Welcome to our mobile application project. This README file will guide you through the initial setup and help you run the application. Please note that we are still in the process of integrating all functionalities. This document will provide the necessary steps to navigate through the main screens of the application.

## Getting Started
To run this application, please follow the instructions below.

## Navigating Through the Application
The application currently includes different main screens for buyers and farmers. To view these screens, you need to uncomment the relevant code sections in `main.dart` and the login screen navigation buttons.

### Viewing the Buyer's Main Screen

1. **Ensure that the `MainScreenBuyer` is uncommented as the last screen:**

    ```dart
    // other imports and code
    void main() {
      runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Your App Name',
          home: MainScreenBuyer(), // Uncomment this line
          // home: MainScreenFarmer(), // Make sure this line is commented
        );
      }
    }
    ```

2. **Go to the login screen file. Uncomment the navigation to `MainScreenBuyer` in the button's `onPressed` event:**

    ```dart
    // other imports and code
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainScreenBuyer()), // Uncomment this line
        // MaterialPageRoute(builder: (context) => MainScreenFarmer()), // Make sure this line is commented
      );
    },
    ```

### Viewing the Farmer's Home Dashboard

1. **Open `main.dart`. Ensure that the `MainScreenFarmer` is uncommented as the last screen:**

    ```dart
    // other imports and code
    void main() {
      runApp(MyApp());
    }

    class MyApp extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Your App Name',
          home: MainScreenFarmer(), // Uncomment this line
          // home: MainScreenBuyer(), // Make sure this line is commented
        );
      }
    }
    ```

2. **Go to the login screen file. Uncomment the navigation to `MainScreenFarmer` in the button's `onPressed` event:**

    ```dart
    // other imports and code
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainScreenFarmer()), // Uncomment this line
        // MaterialPageRoute(builder: (context) => MainScreenBuyer()), // Make sure this line is commented
      );
    },
    ```

## Troubleshooting
If you encounter errors after uncommenting the code, ensure only one screen is uncommented at a time. If issues persist, try deleting the screen reference and re-adding it.

## Next Steps
Our next steps involve integrating the remaining functionalities to make the app fully operational. Stay tuned for updates.

## Contact
If you face any challenges or have questions, please reach out to us. We are here to help you.