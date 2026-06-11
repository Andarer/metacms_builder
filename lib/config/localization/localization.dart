class AppLocalizations {
  final Map<String, Map<String, String>> _localizations = {
    'en_US': {
      'app_title': 'MetaCMS Builder',
      'app_description': 'Android First Platform for CMS, CRM, Wiki, Blog, Shop, AI',
      'home': 'Home',
      'dashboard': 'Dashboard',
      'projects': 'Projects',
      'modules': 'Modules',
      'ai_assistant': 'AI Assistant',
      'github': 'GitHub',
      'settings': 'Settings',
      'about': 'About',
      'logout': 'Logout',
      'loading': 'Loading...',
      'error': 'Error',
      'retry': 'Retry',
      'cancel': 'Cancel',
      'save': 'Save',
      'delete': 'Delete',
      'edit': 'Edit',
      'create': 'Create',
      'close': 'Close',
    },
    'ru_RU': {
      'app_title': 'MetaCMS Строитель',
      'app_description': 'Платформа для создания CMS, CRM, Wiki, Блога, Магазина, AI',
      'home': 'Главная',
      'dashboard': 'Панель управления',
      'projects': 'Проекты',
      'modules': 'Модули',
      'ai_assistant': 'AI Помощник',
      'github': 'GitHub',
      'settings': 'Настройки',
      'about': 'О приложении',
      'logout': 'Выход',
      'loading': 'Загрузка...',
      'error': 'Ошибка',
      'retry': 'Повторить',
      'cancel': 'Отмена',
      'save': 'Сохранить',
      'delete': 'Удалить',
      'edit': 'Редактировать',
      'create': 'Создать',
      'close': 'Закрыть',
    },
  };

  String call(String key) {
    final locale = 'en_US'; // Default locale
    return _localizations[locale]?[key] ?? key;
  }
}
