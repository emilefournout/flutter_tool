import 'package:flutter/material.dart';
import 'package:up_to_do/core/extensions/string/as_html_color_to_color.dart';

@immutable
class UtdColors {
  static final black_000000_0_74 = Colors.black.withOpacity(0.74);

  static final white_FFFFFF_0_1 = Colors.white.withOpacity(0.1);
  static final white_FFFFFF_0_21 = Colors.white.withOpacity(0.21);
  static final white_FFFFFF_0_87 = Colors.white.withOpacity(0.87);

  static final purple_8687E7 = '#8687E7'.htmlColorToColor();

  static final grey_979797 = '#979797'.htmlColorToColor();

  const UtdColors._();
}
