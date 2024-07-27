import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:medical_app/constants/image_consants.dart';
import 'package:medical_app/helpers/gap.dart';
import 'package:medical_app/routes/route_path.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            Image.asset(ImageConstants.walkthroughImage),
            vGap(5),
            const Text(
              'View and buy',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            vGap(5),
            const Text(
              'Medicine online',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            vGap(5),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac porttitor purus.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    // color: Colors.black,
                    ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Skip'),
                ),
                const SizedBox(
                  width: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesome.circle_dot,
                        size: 15,
                      ),
                      Icon(
                        FontAwesome.circle_dot,
                        size: 15,
                      ),
                      Icon(
                        FontAwesome.circle_dot,
                        size: 15,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                      context,
                      RoutePath.login,
                    );
                  },
                  child: const Text('Next'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
