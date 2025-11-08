import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // عشان ما يتعملش منه instance

  // اللون الأساسي
  static const Color primary = Color(0xFF2D5F4F);

  // درجات من اللون الأساسي أو قريبة منه
  static const Color primaryLight = Color(0xFFDF958F);
  static const Color primaryLighter = Color(0xFFD1D1D1);
  static const Color primaryDark = Color(0xFF204F38);

  // ألوان محايدة
  static const Color textPrimary = Color(0xFF292727);
  static const Color textSecondary = Color(0xFF656565);

  // الخلفيات
  static const Color background = Color(0xFFFEFDF9);
  static const Color secondaryDark = Color(0xFF004D8E);

  // أساسية عامة
  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
}
