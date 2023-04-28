import 'package:flutter/material.dart';

extension RouteExtension on BuildContext {
  void goTo<T>(Widget page) => Navigator.of(this).push(
        MaterialPageRoute<T>(
          builder: (context) => page,
        ),
      );
}
