# ATmega - Car Booking Application

A modern, responsive Flutter application for car rental booking confirmations with a clean Material Design 3 interface.

## 📱 About

ATmega is a Flutter-based mobile application that provides a seamless car booking experience. The app currently features a booking confirmation screen with detailed fare breakdown, responsive design for multiple screen sizes, and an intuitive user interface.

## ✨ Features

### 🎯 Current Features
- **Booking Confirmation Screen**: Clean, professional booking confirmation interface
- **Responsive Design**: Optimized for mobile, tablet, and desktop screens
- **Detailed Fare Breakdown**: Comprehensive cost breakdown including:
  - Total kilometers
  - Base price
  - Per-kilometer rate
  - Driver charges
  - Total fare calculation
- **Interactive Elements**: 
  - Tap-to-view booking details
  - Payment initiation button
  - Success notifications
- **Material Design 3**: Modern UI following Google's latest design guidelines
- **Cross-Platform Support**: Runs on Android, iOS, Windows, Linux, macOS, and Web

### 🎨 UI/UX Features
- **Green Success Theme**: Professional green color scheme for confirmation states
- **Card-based Layout**: Clean card design with overlapping header effect
- **Responsive Typography**: Font sizes adapt to screen dimensions
- **Success Indicators**: Visual confirmation with checkmark icons
- **Smooth Interactions**: Snackbar notifications and smooth transitions

## 📸 Screenshots

*Note: Add screenshots of your app in action here*

## 🏗️ Architecture

The application follows a feature-based architecture with clean separation of concerns:

```
lib/
├── main.dart                           # App entry point
├── common/                            # Reusable components
│   └── primary_button.dart           # Styled button widget
├── core/                             # Core app configurations
│   └── constants/
│       └── app_colors.dart           # App color palette
└── features/
    └── booking/                      # Booking feature module
        └── presentation/
            ├── pages/
            │   └── booking_confirmed_page.dart
            └── widgets/
                ├── booking_header.dart
                ├── booking_details_card.dart
                ├── booking_details_info.dart
                └── booking_detail_row.dart
```

### 🧩 Key Components

#### Core Components
- **`AppColors`**: Centralized color management for consistent theming
- **`PrimaryButton`**: Reusable button component with responsive design

#### Booking Module
- **`BookingConfirmedPage`**: Main confirmation screen with overlay layout
- **`BookingHeader`**: Success header with confirmation icon and reference
- **`BookingDetailsCard`**: Main content card with car info and fare details
- **`BookingDetailsInfo`**: Fare breakdown component
- **`BookingDetailRow`**: Individual fare line item component

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.7.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/atmega.git
   cd atmega
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   ```bash
   flutter run
   ```

### Platform-Specific Setup

#### Android
```bash
flutter run -d android
```

#### iOS
```bash
flutter run -d ios
```

#### Web
```bash
flutter run -d chrome
```

#### Desktop (Windows/Linux/macOS)
```bash
flutter run -d windows  # Windows
flutter run -d linux    # Linux
flutter run -d macos    # macOS
```

## 🛠️ Development

### Code Structure

The project follows Flutter best practices with:
- **Feature-based organization**: Each feature in its own module
- **Responsive design**: All components adapt to different screen sizes
- **Reusable components**: Common widgets for consistency
- **Clean architecture**: Separation of presentation and business logic

### Responsive Breakpoints

The app uses the following responsive breakpoints:
- **Mobile**: < 600px width
- **Tablet**: 600px - 1024px width  
- **Desktop**: > 1024px width

### Color Palette

```dart
// Primary Colors
primaryGreen: #00C851     // Main brand color
successGreen: #28A745     // Success states

// Neutral Colors  
white: #FFFFFF           // Text and backgrounds
lightGrey: #9E9E9E       // Subtle text
backgroundGrey: #F5F5F5  // Card backgrounds
darkGrey: #424242        // Primary text
```

## 📦 Dependencies

### Production Dependencies
- **flutter**: Flutter SDK
- **cupertino_icons**: iOS-style icons

### Development Dependencies
- **flutter_test**: Testing framework
- **flutter_lints**: Linting rules for code quality

## 🧪 Testing

Run tests using:
```bash
flutter test
```

## 🏗️ Build

### Debug Build
```bash
flutter build apk --debug
```

### Release Build
```bash
flutter build apk --release
flutter build ios --release
flutter build web --release
```

## 📋 TODO / Roadmap

### Planned Features
- [ ] **Booking Flow**: Complete booking process from car selection to confirmation
- [ ] **Payment Integration**: Real payment gateway integration
- [ ] **User Authentication**: Login/signup functionality
- [ ] **Booking History**: View past bookings
- [ ] **Car Gallery**: Browse available vehicles
- [ ] **Location Services**: GPS integration for pickup/dropoff
- [ ] **Push Notifications**: Booking updates and reminders
- [ ] **Multi-language Support**: Localization for different regions
- [ ] **Dark Mode**: Theme switching capability
- [ ] **Offline Mode**: Basic functionality without internet

### Technical Improvements
- [ ] **State Management**: Implement Bloc/Provider for complex state
- [ ] **API Integration**: Connect to backend services
- [ ] **Database**: Local storage for offline functionality
- [ ] **Unit Tests**: Comprehensive test coverage
- [ ] **CI/CD Pipeline**: Automated testing and deployment
- [ ] **Analytics**: User behavior tracking

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Contribution Guidelines
- Follow the existing code style and architecture
- Ensure responsive design for all new components
- Add documentation for new features
- Write tests for new functionality
- Update README if needed

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 📧 Contact

**Project Maintainer**: [Harshit Kumar]
- Email: harshit81201@gmail.com
- LinkedIn: [Harshit Kumar](https://www.linkedin.com/in/harshitkumar81201/)

---

**Built with ❤️ using Flutter**

*Version 1.0.0 - Last updated: July 2025*
