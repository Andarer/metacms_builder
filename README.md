# MetaCMS Builder 🚀

**MetaCMS Builder** - Android First Platform for generating CMS, CRM, Wiki, Blog, Shop, AI and other digital systems.

[![GitHub License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![Flutter](https://img.shields.io/badge/Flutter-3.16-blue.svg)](https://flutter.dev)
[![Web](https://img.shields.io/badge/Web-PWA-success.svg)](https://andarer.github.io/metacms_builder/)

## 🎯 Key Features

- 📱 **Android First** - Native Android performance and UX
- 🌐 **Multi-Platform** - Web, PWA, GitHub Pages support
- 🛠️ **Builder Architecture** - Modular, extensible design
- 🤖 **AI Integration** - Built-in AI Assistant with Google Gemini
- 🔌 **GitHub Integration** - Direct GitHub API integration
- 📦 **Pre-built Modules** - Blog, Users, Gallery, Shop, CRM, Wiki, AI, Analytics
- 🌍 **Multilingual** - Russian and English support
- 📚 **Full Documentation** - Architecture, API, deployment guides
- 🐳 **Docker Ready** - Container deployment out of the box
- ⚡ **Performance** - Fast, lightweight, offline-capable

## 📋 Prerequisites

- Flutter 3.16+
- Dart 3.0+
- Android SDK 21+
- Node.js 16+ (for web development)
- Docker (optional, for containerization)

## 🚀 Quick Start

### Installation

```bash
# Clone repository
git clone https://github.com/Andarer/metacms_builder.git
cd metacms_builder

# Switch to develop branch for latest features
git checkout develop

# Get dependencies
flutter pub get
```

### Run Development

```bash
# Run on connected device/emulator
flutter run

# Run on web
flutter run -d web

# Run on specific device
flutter run -d <device-id>
```

### Build Release

```bash
# Build APK
flutter build apk --release

# Build Web
flutter build web --release

# Build Windows
flutter build windows --release

# Build macOS
flutter build macos --release
```

## 🐳 Docker Setup

```bash
# Build Docker image
docker build -t metacms-builder .

# Run with docker-compose
docker-compose up -d

# Access at http://localhost:8080
```

## 📁 Project Structure

```
metacms_builder/
├── lib/
│   ├── config/           # Configuration (theme, routes, localization)
│   ├── features/         # Feature modules
│   │   ├── dashboard/
│   │   ├── projects/
│   │   ├── modules/
│   │   ├── ai_assistant/
│   │   ├── github_integration/
│   │   └── settings/
│   ├── core/             # Core utilities and services
│   │   ├── services/
│   │   ├── models/
│   │   ├── repositories/
│   │   └── utils/
│   └── main.dart         # App entry point
├── test/                 # Unit and widget tests
├── web/                  # Web-specific files
├── docker/               # Docker configurations
├── docs/                 # Documentation
│   ├── ARCHITECTURE.md
│   ├── API.md
│   ├── DEPLOYMENT.md
│   └── MODULES.md
├── .github/
│   └── workflows/        # GitHub Actions
├── pubspec.yaml          # Dependencies
├── Dockerfile            # Docker configuration
└── README.md             # This file
```

## 📖 Documentation

- **[ROADMAP.md](docs/ROADMAP.md)** - Project development roadmap
- **[ARCHITECTURE.md](docs/ARCHITECTURE.md)** - System architecture and design patterns
- **[API.md](docs/API.md)** - API reference and integration guide
- **[MODULES.md](docs/MODULES.md)** - Module documentation
- **[DEPLOYMENT.md](docs/DEPLOYMENT.md)** - Deployment and production setup

## 🔧 Configuration

### Environment Variables

Create `.env` file in the root directory:

```env
GITHUB_TOKEN=your_github_token
GOOGLE_GEMINI_API_KEY=your_gemini_api_key
FLUTTER_ENV=development
```

### GitHub Integration

To use GitHub features:

1. Generate [Personal Access Token](https://github.com/settings/tokens)
2. Add to `.env` file or app settings
3. Grant necessary permissions (repo, user)

## 🎨 Screens

### Core Screens Implemented:

- ✅ **Dashboard** - Overview of projects and statistics
- ✅ **Projects** - Project management interface
- ✅ **Modules** - Module browser and installer
- ✅ **AI Assistant** - Chat interface with AI
- ✅ **GitHub Integration** - Repository management
- ✅ **Settings** - App configuration
- ✅ **About** - App information

## 📦 Available Modules

### Built-in Modules:

1. **Blog** - Full-featured blogging system
2. **Users** - User management and authentication
3. **Gallery** - Media gallery with image optimization
4. **Shop** - E-commerce functionality
5. **CRM** - Customer relationship management
6. **Wiki** - Knowledge base system
7. **AI** - AI-powered features
8. **Analytics** - Statistics and reporting

## 🤖 AI Features

MetaCMS Builder includes integration with Google Gemini AI:

- Smart code generation
- Content creation assistance
- Project recommendations
- Natural language queries
- Code review and optimization

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Generate coverage report
genhtml coverage/lcov.info -o coverage/html
```

## 🌐 Web & PWA

The web version is automatically deployed to [GitHub Pages](https://andarer.github.io/metacms_builder/):

- Progressive Web App (PWA)
- Offline support
- Installable on devices
- Push notifications ready

## 📱 Mobile Build

### Android

```bash
# Generate keystore
keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key

# Create key.properties
echo "storeFile=~/key.jks" > android/key.properties
echo "storePassword=your_password" >> android/key.properties
echo "keyPassword=your_key_password" >> android/key.properties
echo "keyAlias=key" >> android/key.properties

# Build signed APK
flutter build apk --release
```

### iOS

```bash
flutter build ios --release
```

## 🔐 Security

- Encrypted local storage with Hive
- Secure token management
- HTTPS only API calls
- Input validation and sanitization
- Permission-based access control

## 🤝 Contributing

We welcome contributions! Please:

1. Fork the repository
2. Create feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open Pull Request

Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## 📝 Changelog

See [CHANGELOG.md](CHANGELOG.md) for version history.

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**Andarer** - [GitHub Profile](https://github.com/Andarer)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- GetX for state management
- Riverpod for reactive programming
- All open-source contributors

## 📞 Support

- 📧 Email: andarer@example.com
- 🐛 [Issue Tracker](https://github.com/Andarer/metacms_builder/issues)
- 💬 [Discussions](https://github.com/Andarer/metacms_builder/discussions)

## 🗺️ Roadmap

See [ROADMAP.md](docs/ROADMAP.md) for upcoming features and development plans.

---

**Made with ❤️ by Andarer**

Give us a ⭐ if you like MetaCMS Builder!
