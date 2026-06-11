import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'config/theme/app_theme.dart';
import 'config/routes/app_routes.dart';
import 'config/localization/localization.dart';
import 'core/services/logger_service.dart';

void main() async {
  // Initialize services
  await _initializeApp();

  runApp(const ProviderScope(child: MyApp()));
}

Future<void> _initializeApp() async {
  // Flutter binding
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for local storage
  await Hive.initFlutter();

  // Initialize Logger
  LoggerService.init();

  // Initialize other services
  // await FirebaseAnalytics.instance.logAppOpen();
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GetMaterialApp(
      title: 'MetaCMS Builder',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      // Localization
      translations: AppLocalizations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      // Routes
      initialRoute: AppRoutes.splash,
      getPages: AppRoutes.pages,
      // Navigation observer for debugging
      navigatorObservers: [
        GetIt.observer,
      ],
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}

// GetX navigation observer
class GetIt {
  static final observer = GetXNavigatorObserver();
}

class GetXNavigatorObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    LoggerService.info('Navigated to: ${route.settings.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    LoggerService.info('Popped from: ${route.settings.name}');
  }
}
