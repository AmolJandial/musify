import 'package:flutter/material.dart';
import 'package:musify/core/res/material_colours.g.dart';

class ButtonStyles {
  ButtonStyles._();

  static final filledRoundedCornerStyle = TextButton.styleFrom(
    minimumSize: const Size.fromHeight(40),
    backgroundColor: lightColorScheme.secondaryContainer,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );

  static final roundedCornerStyle = TextButton.styleFrom(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
    ),
  );
}
