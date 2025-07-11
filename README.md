# 🚗 Sayaraty

<div align="center">
  **A comprehensive Flutter application for car enthusiasts**
  
  [![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
  [![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
</div>

## 🌟 Overview

Sayaraty is a test Flutter application designed for car enthusiasts who want to explore detailed information about various car brands and models. The app provides an immersive experience with user authentication, personalized favorites, and comprehensive profile management, all wrapped in a beautiful, responsive interface that supports both Arabic and English languages.

## ✨ Features

### 🔍 **Car Discovery**
- Browse extensive collection of car brands and models
- High-quality images and detailed specifications
- Advanced search and filtering capabilities
- Interactive car comparisons

### 👤 **User Management**
- Secure authentication system (login/registration)
- Password reset functionality
- Personalized user profiles
- Account settings and preferences

### ❤️ **Favorites System**
- Save favorite cars for quick access
- Organize favorites by categories
- Share favorite cars with friends
- Wishlist management

### 🌍 **Localization**
- Full Arabic and English support
- RTL (Right-to-Left) layout support
- Cultural adaptations for different regions
- Easy language switching

### 🎨 **Modern UI/UX**
- Material Design 3 principles
- Smooth animations and transitions
- Responsive design for all screen sizes
- Dark and light theme support

## 📱 Screenshots

*Screenshots will be added as the app development progresses*

## 🏗️ Architecture

Sayaraty follows a clean, modular architecture pattern ensuring scalability and maintainability:

```
lib/
├── 🔧 config/              # App-wide configuration
│   ├── colors.dart         # Color constants
│   ├── routes.dart         # Route management
│   └── themes.dart         # Theme configurations
├── 🎯 core/                # Core utilities and shared components
│   ├── constants/          # App constants
│   ├── helpers/            # Helper functions
│   ├── services/           # API services
│   └── widgets/            # Reusable widgets
├── 🚀 features/            # Feature modules
│   ├── auth/               # Authentication feature
│   ├── cars/               # Car browsing feature
│   ├── favorites/          # Favorites management
│   ├── home/               # Home screen
│   └── profile/            # Profile management
├── 🌐 gen/                 # Generated localization keys
├── 📁 generated/           # Generated asset references
├── 🗣️ l10n/               # Localization files and delegates
├── 📱 main.dart           # App entry point
└── 🎪 sayaraty_app.dart   # Main app widget

assets/
├── 🎬 animation/           # Lottie animations
├── 🚗 cars.json           # Car database
├── 🖼️ images/             # Static images
│   ├── cars/              # Car images
│   ├── brands/            # Brand logos
│   └── ui/                # UI assets
└── 🌐 lang/               # Localization JSON files
```

## 🚀 Getting Started

### 📋 Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (>=3.0.0)
- [Dart SDK](https://dart.dev/get-dart) (>=2.17.0)
- [Android Studio](https://developer.android.com/studio) or [Xcode](https://developer.apple.com/xcode/)
- Git for version control

### 🛠️ Installation

1. **Clone the repository:**
   ```bash
   git clone <your-repo-url>
   cd sayaraty
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate localization files:**
   ```bash
   flutter gen-l10n
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

### 🏗️ Building for Testing

#### Android
```bash
# Build APK for testing
flutter build apk --debug

# Build release APK
flutter build apk --release
```

#### iOS
```bash
# Build for iOS testing
flutter build ios --debug
```

## 🌐 Localization

### Supported Languages
- 🇸🇦 Arabic (العربية)
- 🇺🇸 English

### Adding New Languages

1. **Create language file:**
   ```bash
   touch assets/lang/es.json  # For Spanish
   ```

2. **Add translations:**
   ```json
   {
     "app_name": "Sayaraty",
     "welcome": "Bienvenido",
     ...
   }
   ```

3. **Update ARB files:**
   ```bash
   # Add corresponding translations to lib/l10n/app_*.arb files
   ```

4. **Regenerate localization:**
   ```bash
   flutter gen-l10n
   ```

## 🎨 Customization

### Themes
Modify `lib/config/themes.dart` to customize:
- Color schemes
- Typography
- Component themes
- Dark/light mode variations

### Colors
Update `lib/config/colors.dart` for:
- Brand colors
- Semantic colors
- Gradient definitions

## 📊 Dependencies

### Core Dependencies
- `flutter_localizations` - Internationalization
- `flutter_bloc` - State management
- `dio` - HTTP client
- `cached_network_image` - Image caching
- `shared_preferences` - Local storage

### UI Dependencies
- `lottie` - Animations
- `shimmer` - Loading effects
- `flutter_svg` - SVG support

### Development Dependencies
- `flutter_test` - Testing framework
- `flutter_lints` - Code analysis
- `build_runner` - Code generation

## 🧪 Testing

Run tests with:
```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/

# Generate coverage report
flutter test --coverage
```
