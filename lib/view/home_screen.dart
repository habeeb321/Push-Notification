import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:push_notification/controller/firebase_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FirebaseController>(context);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      provider.permission();
    });
    return const Scaffold(
      body: Center(
        child: Text('Home Screen'),
      ),
    );
  }
}
