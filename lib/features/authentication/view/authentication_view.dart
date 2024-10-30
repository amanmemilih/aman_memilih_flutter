import 'package:aman_memilih_flutter/core/components/buttons/button_primary.dart';
import 'package:aman_memilih_flutter/core/components/text_fields/text_field_primary.dart';
import 'package:aman_memilih_flutter/core/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({super.key});

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
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Selamat Datang",
                  style: titleLarge,
                ),
                const SizedBox(height: 7),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: "Masukkan ",
                      style: labelSmall,
                    ),
                    TextSpan(
                      text: "Username",
                      style: displaySmall,
                    ),
                    TextSpan(
                      text: " dan ",
                      style: labelSmall,
                    ),
                    TextSpan(
                      text: "Password",
                      style: displaySmall,
                    ),
                    TextSpan(
                      text:
                          " anda sesuai yang telah di daftarkan pada pelatihan kemarin.",
                      style: labelSmall,
                    ),
                  ]),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const TextFieldPrimary(
                  hintText: "Username",
                  isPassword: false,
                ),
                const SizedBox(height: 29),
                const TextFieldPrimary(
                  hintText: "Password",
                  isPassword: true,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Lupa Password?"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ButtonPrimary(
                onPressed: () {},
                title: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
