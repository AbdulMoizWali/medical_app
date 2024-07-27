import 'package:flutter/material.dart';
import 'package:medical_app/constants/image_consants.dart';
import 'package:medical_app/helpers/gap.dart';
import 'package:medical_app/routes/route_path.dart';
import 'package:medical_app/theme/theme_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RoutePath.walkthrough);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.getThemeColors(context).primaryColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            child: Image.asset(
              ImageConstants.backgroundImage,
              alignment: Alignment.center,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 30,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(ImageConstants.logoImage),
                ),
              ),
              vGap(10),
              Text(
                'Quick Medical',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
