import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Views/start_community.dart';
import 'package:whatsapp_clone/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Clone',
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.teal, // Light theme primary color
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple, // Dark theme primary color
        ),
      ),
      themeMode: ThemeMode
          .system, // Set this to control light/dark mode based on system settings
      home: const MyHomeScreen(),
      routes: {
        '/startCommunity': (context) => StartCommunityScreen(),
      },
    );
  }
}
