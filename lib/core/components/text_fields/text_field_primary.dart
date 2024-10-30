import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/colors.dart';
import '../../resources/text_styles.dart';

class TextFieldPrimary extends StatelessWidget {
  const TextFieldPrimary({
    super.key,
    required this.isPassword,
    this.hintText,
    this.controller,
    this.keyboardType,
  });

  final String? hintText;
  final bool isPassword;
  final TextInputType? keyboardType;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            style: BorderStyle.solid,
            width: 0.5,
            color: BaseColors.colorBlackPrimary,
          ),
          borderRadius: BorderRadius.circular(90),
        ),
        hintStyle: labelMedium.copyWith(
          fontWeight: FontWeight.w300,
          color: BaseColors.colorGreySecondary,
        ),
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(22, 10, 22, 10),
        suffixIcon: isPassword
            ? IconButton(
                icon: SvgPicture.asset("assets/icons/eye_slash.svg"),
                onPressed: () {},
              )
            : Padding(
                padding: const EdgeInsets.all(14),
                child: Text(
                  "Periksa",
                  style: displaySmall.copyWith(color: BaseColors.colorPrimary),
                ),
              ),
      ),
    );
  }
}
