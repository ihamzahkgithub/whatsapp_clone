import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Views/start_community.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => StartCommunityScreen()),
            );
          },
          child: const Text("Start Community")),
    ));
  }
}
