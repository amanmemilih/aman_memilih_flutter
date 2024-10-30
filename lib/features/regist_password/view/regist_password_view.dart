import 'package:aman_memilih_flutter/core/components/buttons/button_primary.dart';
import 'package:aman_memilih_flutter/core/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/text_fields/text_field_primary.dart';

class RegistPasswordView extends StatelessWidget {
  const RegistPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 29),
          child: SvgPicture.asset("assets/logo/logo.svg"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(21, 20, 21, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Registrasi Password",
                  style: titleLarge,
                ),
                const SizedBox(height: 7),
                Text(
                  "Tambahkan password untuk melindungi data kerja\nanda",
                  style: labelSmall,
                ),
              ],
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextFieldPrimary(
                  hintText: "Password",
                  isPassword: true,
                ),
                SizedBox(height: 20),
                TextFieldPrimary(
                  hintText: "Konfirmasi Password",
                  isPassword: true,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ButtonPrimary(
                onPressed: () {},
                title: "Lanjutkan",
              ),
            )
          ],
        ),
      ),
    );
  }
}
