import 'package:aman_memilih_flutter/core/components/buttons/button_primary.dart';
import 'package:aman_memilih_flutter/core/resources/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RecoveryPasswordView extends StatelessWidget {
  const RecoveryPasswordView({super.key});

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
                  "Atur Password Cadangan",
                  style: titleLarge,
                ),
                const SizedBox(height: 7),
                Text(
                  "Simpan kode recovery ini jika dikemudian hari anda\nlupa password",
                  style: labelSmall,
                ),
                const SizedBox(height: 36),
              ],
            ),
            Column(
              children: [
                for (var i = 0; i < 8; i++)
                  Container(
                    margin: const EdgeInsets.only(top: 17),
                    padding: const EdgeInsets.fromLTRB(16, 7, 16, 7),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(90),
                    ),
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("JrUm93PTH2H0SbTtTOhn"),
                        IconButton(
                          padding: EdgeInsets.zero,
                          icon: SvgPicture.asset("assets/icons/documents.svg"),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: ButtonPrimary(onPressed: () {}, title: "Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
