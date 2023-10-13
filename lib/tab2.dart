import 'dart:math';

import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Tab2 extends StatefulWidget {
  const Tab2({super.key});

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  String _data = 'EdBguAUrOH0xXkdTi7aEKGUA5JlTLY';
  // String randomText = 'EdBguAUrOH0xXkdTi7aEKGUA5JlTLY';

  void generateRandomText() {

    const String characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    Random random = Random();
    String randomText = '';

    for (int i = 0; i < 30; i++) {
      int randomIndex = random.nextInt(characters.length);
      randomText += characters[randomIndex];
    }

    setState(() {
      _data = randomText;
      print(randomText);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        QrImageView(
          data: _data,
          version: QrVersions.auto,
          size: 200.0,
        ),
        ElevatedButton(
            onPressed: () {
              generateRandomText();
            },
            child: const Text('Generate QR code')),
      ],
    ),
    ),
    );
  }
}