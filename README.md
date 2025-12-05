🌤️ Weather App

A modern, feature-rich Flutter weather application that provides real-time weather data with a clean, intuitive, and responsive user interface.

🚀 Features

🌦 Real-time Weather Data
Get up-to-date temperature, humidity, wind speed, weather status, and more.

📍 Location Search
Search for weather information in any city worldwide with fast API responses.

🎨 Clean & Beautiful UI
Designed with smooth components, icons, and animations to visualize weather clearly.

📱 Responsive Design
Works seamlessly across all screen sizes and orientations (phones/tablets).

⚡ Efficient State Management
Built using BLoC / Cubit for clean architecture and optimized performance.

🛠 Tech Stack

Flutter (Dart)

BLoC/Cubit State Management

Weather API (e.g., WeatherAPI, OpenWeather, etc.)

RESTful API Integration

## 📸 Screenshots

Add screenshots here if you have any

## 🏗️ Project Structure

```
lib/
├── main.dart                      # Application entry point
├── cubits/                        # State management (BLoC/Cubit)
│   └── get_weather_cubit/
├── models/                        # Data models
│   └── weather_model.dart
├── services/                      # API services & business logic
│   └── weather_services.dart
├── views/                         # UI screens
│   ├── home_view.dart            # Main weather display
│   └── search_view.dart          # City search functionality
└── widgets/                       # Reusable UI components
    ├── no_weather_body.dart      # Empty state UI
    └── weather_info_body.dart    # Weather details display
```

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (latest stable version)
- Dart SDK
- A weather API key (OpenWeatherMap, WeatherAPI, etc.)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/8Fouad8/Weather-App.git
   cd Weather-App
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   - Add your weather API key to the appropriate configuration file
   - Update `lib/services/weather_services.dart` with your API endpoint

4. **Run the app**
   ```bash
   flutter run
   ```

## 📚 Usage

- **Home Screen**: View current weather for your location
- **Search**: Tap the search button to find weather for any city
- **Real-time Updates**: Weather data updates automatically

## 🎯 Architecture

This project follows the **BLoC (Business Logic Component)** architectural pattern, which provides:
- Clean separation of concerns
- Easier testing and maintenance
- Scalable code structure
- Efficient state management

## 🤝 Contributing

Contributions are welcome! Feel free to submit pull requests or open issues for bugs and feature requests.

## 📝 Screemshots

![1](https://github.com/user-attachments/assets/a6d8a08c-adaa-4e94-8979-4b801e8aa66b)
![2](https://github.com/user-attachments/assets/3388d7b3-ab14-4a0f-86c6-45005b235830)


## 👤 Author

**8Fouad8** - [GitHub Profile](https://github.com/8Fouad8)

---

Made with ❤️ using Flutter
