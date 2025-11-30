# Flutter Bloc Counter App

A Flutter application demonstrating state management with **flutter_bloc** and **Cubit**.

## Features

- Counter functionality with increment/decrement
- State management using Cubit
- BlocProvider for dependency injection
- BlocBuilder for reactive UI updates
- Print statements showing state changes in console

## Project Structure

```
lib/
├── main.dart          # Main app with BlocProvider and BlocBuilder
├── counter_cubit.dart # Cubit with increment/decrement logic
└── counter_state.dart # State model with count property
```

## Key Concepts Demonstrated

1. **BlocProvider**: Creates and provides Cubit instance to widget tree
2. **BlocBuilder**: Automatically rebuilds UI when state changes
3. **State Management**: Immutable state updates with copyWith
4. **Event Handling**: Public methods on Cubit for triggering state changes

## Getting Started

### Prerequisites

- Flutter SDK installed
- A code editor (VS Code, Android Studio, etc.)

### Installation

1. Clone or download this project
2. Navigate to the project directory:
   ```bash
   cd counter_app
   ```
3. Get dependencies:
   ```bash
   flutter pub get
   ```

## Running the App

### Web (Chrome)
```bash
flutter run -d chrome
```

### iOS Simulator
```bash
flutter run -d ios
```

### Android Emulator
```bash
flutter run -d android
```

### macOS Desktop
```bash
flutter run -d macos
```

### Windows Desktop
```bash
flutter run -d windows
```

### Linux Desktop
```bash
flutter run -d linux
```

### Check Available Devices
```bash
flutter devices
```

### Run on All Connected Devices
```bash
flutter run -d all
```

## Development Commands

### Hot Reload
Press `r` in the terminal while the app is running

### Hot Restart
Press `R` in the terminal while the app is running

### Analyze Code
```bash
flutter analyze
```

### Run Tests
```bash
flutter test
```

### Build for Production

#### Web
```bash
flutter build web
```

#### iOS
```bash
flutter build ios
```

#### Android APK
```bash
flutter build apk
```

#### Android App Bundle
```bash
flutter build appbundle
```

## Dependencies

- `flutter_bloc: ^8.1.6` - State management library
- `equatable: ^2.0.5` - Value equality for state objects

## Architecture

This app follows the **Cubit pattern** from the flutter_bloc library:

1. **CounterState**: Immutable state class containing the counter value
2. **CounterCubit**: Business logic layer that manages state transitions
3. **UI Layer**: Uses BlocBuilder to listen for state changes and rebuild accordingly

## State Flow

```
User Action → Cubit Method → emit(newState) → BlocBuilder rebuilds UI
```

Example:
```
Button Press → increment() → emit(CounterState(count: 1)) → UI shows "1"
```