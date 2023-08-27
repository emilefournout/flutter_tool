import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final themeProvider = Provider<ThemeData>((ref) {
  final isDark = ref.watch(themeSwitchProvider);
  return isDark ? darkTheme : lightTheme;
});
