    import 'package:flutter/material.dart';

    class WalkthroughScreen extends StatefulWidget {
      const WalkthroughScreen({super.key});

      @override
      State<WalkthroughScreen> createState() => _WalkthroughScreenState();
    }

    class _WalkthroughScreenState extends State<WalkthroughScreen> {
      @override
      Widget build(BuildContext context) {
        return const Scaffold(
          body: Center(
            child: Text('WalkthroughScreen'),
          ),
        );
      }
    }
    