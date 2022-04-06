import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialapp/providers/authProviders.dart';

class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return Scaffold(
        appBar: AppBar(
          title: Text('MainScreen'),
          actions: [
            TextButton(
              onPressed: () {
                ref.read(logSignProvider).LogOut();
              },
              child: Text(
                'Sign Out',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
        body: Text('Status'),
      );
    });
  }
}
