class AppConstants {
  // API Configuration
  static const String apiBaseUrl = 'https://api.example.com';
  static const String githubApiUrl = 'https://api.github.com';
  static const String geminiApiUrl = 'https://generativelanguage.googleapis.com';

  // Timeouts
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration cacheTimeout = Duration(hours: 1);

  // Storage Keys
  static const String storageKeyToken = 'auth_token';
  static const String storageKeyUser = 'user_data';
  static const String storageKeyTheme = 'theme_mode';
  static const String storageKeyLanguage = 'language';
  static const String storageKeyProjects = 'projects';

  // Features
  static const int maxProjectsPerUser = 100;
  static const int maxModulesPerProject = 50;
  static const int maxProjectNameLength = 100;
  static const int minProjectNameLength = 3;

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;

  // Validation
  static const String emailRegex =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  static const String urlRegex =
      r'^https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)$';
}
