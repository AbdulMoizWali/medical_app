import 'package:flutter/material.dart';
import 'package:medical_app/constants/image_consants.dart';
import 'package:medical_app/helpers/gap.dart';
import 'package:medical_app/routes/route_path.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    ImageConstants.logoImage,
                  ),
                ),
              ),
              Text(
                'Quick Medical',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Colors.black,
                    ),
              ),
              vGap(40),
              const Text('Please Enter your Mobile Number to Login/Signup'),
              vGap(10),
              TextFormField(
                decoration: InputDecoration(
                  hintText: '+92 300 1234567',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              vGap(10),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, RoutePath.home);
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
