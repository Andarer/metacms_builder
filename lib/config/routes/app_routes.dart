import 'package:get/get.dart';

abstract class AppRoutes {
  static const String splash = '/splash';
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String projects = '/projects';
  static const String modules = '/modules';
  static const String aiAssistant = '/ai-assistant';
  static const String githubIntegration = '/github';
  static const String settings = '/settings';
  static const String about = '/about';

  static final List<GetPage> pages = [
    // TODO: Add route pages
    // GetPage(
    //   name: splash,
    //   page: () => const SplashScreen(),
    // ),
    // GetPage(
    //   name: home,
    //   page: () => const HomeScreen(),
    // ),
  ];
}
