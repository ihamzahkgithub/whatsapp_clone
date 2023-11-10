import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/models.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatItem> ChatItems = [
    ChatItem(
      username: 'Sam Smith',
      message: 'Just Now',
      time: '3:00',
      avatarUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
    ChatItem(
      username: 'Donald Trump',
      message: 'Just Now',
      time: '3:00',
      avatarUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
    ChatItem(
      username: 'Muhammad Ali',
      message: 'hello',
      time: '2:00',
      avatarUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
    ChatItem(
      username: 'Sardar Khan',
      message: 'hello',
      time: '2:00',
      avatarUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
    ChatItem(
      username: 'Virat Kohli',
      message: 'hello',
      time: '2:00',
      avatarUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 22,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI='), // Replace with your profile image URL
            ),
            title: const Text('Hamza Khan'),
            subtitle: const Text('Hi wassup'),
            trailing: const Text('2:00'),
            onTap: () {
              // Handle status update
            },
          ),
          for (var status in ChatItems)
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(status.avatarUrl),
              ),
              title: Text(status.username),
              subtitle: Text(' ${status.message}'),
              trailing: const Text('2:00'),
              onTap: () {
                // Handle viewing status
              },
            ),
        ],
      ),
    );
  }
}
