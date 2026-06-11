import 'package:intl/intl.dart';

extension StringExtension on String {
  bool get isValidEmail {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$');
    return emailRegex.hasMatch(this);
  }

  bool get isValidUrl {
    try {
      Uri.parse(this);
      return startsWith('http://') || startsWith('https://');
    } catch (e) {
      return false;
    }
  }

  String get capitalize {
    if (isEmpty) return this;
    return '${this[0].toUpperCase()}${substring(1)}';
  }

  String get capitalizeWords {
    return split(' ')
        .map((word) => word.capitalize)
        .join(' ');
  }

  String truncate({required int length, String suffix = '...'}) {
    if (this.length <= length) return this;
    return '${substring(0, length)}$suffix';
  }
}

extension DateTimeExtension on DateTime {
  String get formatted {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }

  String get formattedDate {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String get formattedTime {
    return DateFormat('HH:mm:ss').format(this);
  }

  String get timeAgo {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'just now';
    }
  }
}

extension NumExtension on num {
  String get formatted {
    if (this >= 1000000) {
      return '${(this / 1000000).toStringAsFixed(1)}M';
    } else if (this >= 1000) {
      return '${(this / 1000).toStringAsFixed(1)}K';
    } else {
      return toString();
    }
  }
}
