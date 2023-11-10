import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp_clone/Views/calls.dart';
import 'package:whatsapp_clone/Views/camera_acces.dart';
import 'package:whatsapp_clone/Views/chat.dart';
import 'package:whatsapp_clone/Views/community.dart';
import 'package:whatsapp_clone/Views/status.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late List<CameraDescription> cameras;
  bool isDarkMode = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);

    availableCameras().then((cameras) {
      setState(() {
        this.cameras = cameras;
      });
    });
  }

  void _openCamera() async {
    if (cameras.isNotEmpty) {
      final CameraController controller = CameraController(
        cameras[0],
        ResolutionPreset.medium,
      );
      await controller.initialize();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CameraScreen(cameraController: controller),
        ),
      );
    }
  }

  void _toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isDarkMode ? _buildDarkAppBar() : _buildLightAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: [
          CommunityScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
    );
  }

  // Custom light-themed AppBar
  PreferredSizeWidget _buildLightAppBar() {
    return AppBar(
      backgroundColor: Color(0xFF25D366),
      title: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      elevation: 1.2,
      actions: [
        IconButton(
          onPressed: _openCamera,
          icon: const Icon(Icons.camera_alt),
        ),
        PopupMenuButton<String>(
          onSelected: (value) {
            if (value == 'darkMode') {
              _toggleDarkMode();
            }
          },
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'darkMode',
                child: Row(
                  children: [
                    Icon(
                      Icons.nightlight_round,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 8),
                    Text('Dark Mode'),
                  ],
                ),
              ),
            ];
          },
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(text: 'Communities'),
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
    );
  }

  // Custom dark-themed AppBar
  PreferredSizeWidget _buildDarkAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'WhatsApp',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      elevation: 1.2,
      actions: [
        IconButton(
          onPressed: _openCamera,
          icon: const Icon(Icons.camera_alt),
        ),
        InkWell(
          onTap: _toggleDarkMode,
          child: const Icon(
            Icons.wb_sunny,
            color: Colors.white,
          ),
        ),
      ],
      bottom: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(text: 'Communities'),
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
    );
  }
}
