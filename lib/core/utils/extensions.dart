import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  EdgeInsets get padding => MediaQuery.paddingOf(this);

  Size get sizeOf => MediaQuery.sizeOf(this);

  Brightness get brightness => theme.brightness;

  AppBarTheme get appBarTheme => theme.appBarTheme;
}

extension TimeAgoExtension on DateTime {
  String timeAgo() {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays > 0) {
      return "${difference.inDays} кун аввал, ${this.hour}:${this.minute.toString().padLeft(2, '0')}";
      // return '${difference.inDays} days ago, ${this.hour}:${this.minute.toString().padLeft(2, '0')}';
    } else if (difference.inHours > 0) {
      // final minutes = difference.inMinutes % 60;
      return "${difference.inHours} соат аввал";
      // return '${difference.inHours} hours ${minutes} minutes ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} дақиқа аввал';
    } else {
      return 'Хозир';
    }
  }
}
