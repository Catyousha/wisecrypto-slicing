import 'package:flutter/cupertino.dart';

class AppShadow {
  static final card = BoxShadow(
    color: const Color(0xFF333333).withOpacity(0.1),
    offset: const Offset(0, 2),
    blurRadius: 10,
  );

  static final button = BoxShadow(
    color: const Color(0xFF333333).withOpacity(0.2),
    offset: const Offset(0, 4),
    blurRadius: 12,
  );
}