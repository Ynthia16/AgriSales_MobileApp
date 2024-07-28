# AgriSales: Agritech Project for Trimester 2.3 using Flutter

## About The Project

AgriSales aims to revolutionize the agricultural landscape in Rwanda and Africa by providing a marketplace mobile application. This platform enables farmers to compete fairly in the market without middlemen. Understanding the structural barriers in many African countries, the app also offers services via USSD technology. Additionally, it features an agronomy support section where farmers can access real-time information and advice to enhance their agricultural practices.

## Demo
[![Watch the video]](https://raw.githubusercontent.com/Ynthia16/AgriSales_MobileApp/main/AgrisalesDemo.mp4)

## Getting Started

### Prerequisites
- Flutter installed on your local machine
- Visual Studio Code (VSCode) or any other code editor of your choice
- Git installed on your local machine

### Installation
1. Clone the whole repository:
2. Change directory to the AgriSales folder:


## Navigating Through the Application

The application includes different main screens for buyers and farmers. To view these screens:

### Viewing the Buyer's Main Screen
1. In `main.dart`, ensure `MainScreenBuyer` is uncommented as the home screen.
2. In the login screen file, uncomment the navigation to `MainScreenBuyer`.

### Viewing the Farmer's Home Dashboard
1. In `main.dart`, ensure `MainScreenFarmer` is uncommented as the home screen.
2. In the login screen file, uncomment the navigation to `MainScreenFarmer`.

## Troubleshooting
If you encounter errors after uncommenting the code, ensure only one screen is uncommented at a time. If issues persist, try deleting the screen reference and re-adding it.

## Project Structure

The project follows a standard Flutter application structure:

- `lib/`: Contains the main Dart code for the application
- `screens/`: UI screens for both farmers and buyers
- `components/`: Reusable UI components
- `models/`: Data models for the application
- `android/`: Android-specific configuration files
- `ios/`: iOS-specific configuration files
- `windows/`: Windows-specific configuration files
- `linux/`: Linux-specific configuration files
- `macos/`: macOS-specific configuration files

## Key Features

1. Separate interfaces for farmers and buyers
2. Product listing and management for farmers
3. Order placement and tracking for buyers
4. User profile management
5. Search functionality for products
6. Blog or information section for agricultural advice

## Development Guidelines

- Follow Flutter best practices and coding conventions
- Use state management solutions for complex state handling
- Implement responsive design for various screen sizes
- Write unit and integration tests for critical functionalities

## Contributing

We welcome contributions to the AgriSales project. Please follow these steps to contribute:

1. Fork the repository
2. Create a new branch for your feature
3. Commit your changes
4. Push to your branch
5. Create a new Pull Request

## Next Steps
Our next steps involve integrating the remaining functionalities to make the app fully operational. Stay tuned for updates.

## Contact
[Your contact information here]

## License

[Include your license information here]

## Acknowledgments

- Flutter team for the excellent framework
- All contributors and supporters of the AgriSales project
