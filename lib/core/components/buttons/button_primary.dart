import 'package:aman_memilih_flutter/core/resources/text_styles.dart';
import 'package:flutter/material.dart';

import '../../resources/colors.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        overlayColor: WidgetStatePropertyAll(BaseColors.colorSeconrary),
        foregroundColor: WidgetStatePropertyAll(BaseColors.colorWhite),
        backgroundColor: WidgetStatePropertyAll(BaseColors.colorPrimary),
        minimumSize: WidgetStatePropertyAll(
          Size(double.infinity, 40),
        ),
        elevation: WidgetStatePropertyAll(0),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: labelLarge,
      ),
    );
  }
}
