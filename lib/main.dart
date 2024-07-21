import 'package:flutter/material.dart';
import 'package:medical_app/constants/image_consants.dart';
import 'package:medical_app/theme/theme_builder.dart';
import 'package:medical_app/routes/route_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage(ImageConsants.backgroundImage), context);
    precacheImage(const AssetImage(ImageConsants.logoImage), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeBuilder.buildTheme(context, Brightness.light),
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}
