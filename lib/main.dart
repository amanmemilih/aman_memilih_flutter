import 'package:aman_memilih_flutter/core/resources/colors.dart';
import 'package:aman_memilih_flutter/core/resources/text_styles.dart';
import 'package:aman_memilih_flutter/features/authentication/view/authentication_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: BaseColors.colorPrimary,
          primary: BaseColors.colorPrimary,
          secondary: BaseColors.colorSeconrary,
          outline: BaseColors.colorGreyPrimary,
          brightness: Brightness.light,
          onPrimary: BaseColors.colorGreySecondary,
        ),
        textTheme: TextTheme(
          titleLarge: titleLarge,
          labelSmall: labelSmall,
          displaySmall: displaySmall,
        ),
        useMaterial3: true,
      ),
      home: const AuthenticationView(),
    );
  }
}
