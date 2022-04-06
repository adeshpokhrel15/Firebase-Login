import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:socialapp/providers/authProviders.dart';
import 'package:socialapp/screens/authScreen.dart';
import 'package:socialapp/screens/mainScree.dart';

class statusCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        final auth = ref.watch(authProvider);

        return auth.when(
            data: (data) {
              if (data == null) {
                return authScreen();
              } else {
                return mainScreen();
              }
            },
            error: (err, stack) => Text('$err'),
            loading: () => Center(
                  child: CircularProgressIndicator(),
                ));
      }),
      child: Scaffold(
        body: Text('Status'),
      ),
    );
  }
}
