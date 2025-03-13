# Project Documentation

## Overview

This Flutter application follows clean architecture principles and implements modern Flutter development practices. The project uses BLoC for state management and follows a feature-first organization structure.

## Slicing UI

- ✅  Selecting Partner Page
- ✅  Confirmation Invoice Page
- ✅  Bank Selection Page
- ✅  Payment Method Selection Page
- ✅  Payment Page
- ✅  Receipt Page

## API Integration

- ✅  Get Saved Accounts
- ✅  Get Banks List

## DDD Architecture

- ✅ Core
- ✅ Data
- ✅ Domain
- ✅ Feature/Presentation
- ✅ Shared

## State Management

- ✅ BLoC
- ✅ Dependency Injection

## Technical Documentation

- ✅ Readme.MD
- ✅ Architecture Diagram

## Build

- ✅ Build APK

## Quick Start

To get started with development:

```bash
make init          # Clean, get dependencies, and generate code
make get          # Install dependencies
make generate     # Generate necessary code
make l10n         # Generate localizations
make run          # Run the application
```

## Architecture

### Clean Architecture Layers

1. **Presentation Layer (Features)**
   - UI components, pages, and widgets
   - BLoC pattern for state management
   - Feature-first organization
   - Handles user interactions and UI state

2. **Domain Layer**
   - Business logic
   - Entity definitions using Freezed
   - Repository interfaces

3. **Data Layer**
   - Repository implementations
   - Data sources (Remote)
   - API clients using Retrofit
   - Data models and mappers

### Key Features & Dependencies

#### State Management (BLoC)

```dart
// Example BLoC structure
@freezed
class PayoutState with _$PayoutState {
  const factory PayoutState.initial() = _Initial;
  const factory PayoutState.loading() = _Loading;
  const factory PayoutState.success(PayoutData data) = _Success;
  const factory PayoutState.error(String message) = _Error;
}

class PayoutBloc extends Bloc<PayoutEvent, PayoutState> {
  // BLoC implementation
}
```

#### Navigation (AutoRoute)

```dart
@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PayoutPage),
    // Add your routes here
  ],
)
class $AppRouter {}
```

#### Dependency Injection (GetIt + Injectable)

```dart
@module
abstract class AppModule {
  @singleton
  PayoutRepository providePayoutRepository(
    PayoutRemoteDataSource remoteDataSource,
  ) => PayoutRepositoryImpl(remoteDataSource);
}

@injectable
class PayoutBloc extends Bloc<PayoutEvent, PayoutState> {
  final PayoutRepository _repository;
  
  PayoutBloc(this._repository);
}
```

#### Network Layer (Dio + Retrofit)

```dart
@RestApi(baseUrl: "https://api.example.com")
abstract class PayoutApiClient {
  factory PayoutApiClient(Dio dio) = _PayoutApiClient;

  @GET("/payout/status")
  Future<PayoutStatusResponse> getPayoutStatus();
}
```

#### Code Generation

The project uses several code generators:

1. **Freezed**
   - For immutable data classes
   - Union types/sealed classes
   - JSON serialization

2. **Flutter Gen**
   - Asset constants generation
   - Color schemes
   - Font families

3. **Build Runner**
   - Run generation with:

   ```bash
   make generate
   # or
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

### Project Structure

```
lib/
├── src/
│   ├── core/           # Core utilities and configurations
│   │   ├── di          # Dependency injection setup
│   │   ├── network     # Network configuration
│   │   └── router      # Navigation setup
│   ├── data/           # Data layer
│   │   ├── models/     # Data models
│   │   ├── datasources # Data sources
│   │   └── repos/      # Repository implementations
│   ├── domain/         # Business logic
│   │   ├── entities/   # Business entities
│   │   └── repos/      # Repository interfaces
│   ├── features/       # Feature modules
│   │   └── payout/     # Example feature
│   │       ├── managers/  # BLoCs
│   │       ├── pages/     # UI pages
│   │       └── widgets/   # Feature-specific widgets
│   └── shared/         # Shared components
└── main.dart
```

### Network Layer Implementation

The network layer is implemented using Dio and Retrofit:

1. **Dio Configuration**

```dart
@singleton
class DioClient {
  Dio get dio => Dio()
    ..options = BaseOptions(
      baseUrl: Environment.apiUrl,
      headers: {'Content-Type': 'application/json'},
    )
    ..interceptors.addAll([
      LogInterceptor(),
      // Add other interceptors
    ]);
}
```

2. **Retrofit API Client**

```dart
@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio) = _ApiClient;
  
  @GET('/api/v1/savedAccounts')
  Future<List<SavedAccount>> getSavedAccounts();
  
  @GET('/api/v1/bankList')
  Future<List<Bank>> getBankList();
}
```

### Mock API Endpoints

The application uses mock APIs for development and testing:

Base URL: `https://67d17d02825945773eb4845d.mockapi.io`

#### 1. Saved Accounts

- **Endpoint**: `/api/v1/savedAccounts`
- **Method**: GET
- **Response**: List of saved accounts with details
- **Sample Response**:

```json
[
  {
    "nama": "Agus Supriyadi",
    "phone": "08123456789",
    "email": "agus.supriyadi@gmail.com",
    "id": "1"
  },
  {
    "nama": "Tama Nugraha",
    "phone": "085974964088",
    "email": "tama.nugraha@yahoo.com",
    "id": "2"
  }
  // ... more accounts
]
```

#### 2. Bank List

- **Endpoint**: `/api/v1/bankList`
- **Method**: GET
- **Response**: List of available banks with their codes
- **Sample Response**:

```json
[
  {
    "id": "bank001",
    "nama": "Allo Bank Indonesia",
    "kode": "567"
  },
  {
    "id": "bank002",
    "nama": "Bangkok Bank",
    "kode": "022"
  }
  // ... more banks
]
```

## Available Make Commands

See the Makefile for all available commands:

- `make init` - Initialize project
- `make clean` - Clean build files
- `make get` - Get dependencies
- `make generate` - Generate code
- `make l10n` - Generate localizations
- `make run` - Run the app

## Build & Deploy

```bash
# Development build
flutter build apk --debug

# Production build
flutter build apk --release
```
