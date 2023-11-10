import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Models/models.dart';
import 'package:whatsapp_clone/Views_Model/gallery_acces.dart';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<StatusItem> statusItems = [
    StatusItem(
      username: 'Hamza Khan',
      timeAgo: 'Just Now',
      imageUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
    StatusItem(
      username: 'Muhammad Ali',
      timeAgo: '2 minutes ago',
      imageUrl:
          'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI=', // Replace with image URL
    ),
  ];

  // // Function to open the gallery and select an image
  // Future<void> openGallery() async {
  //   final picker = ImagePicker();
  //   final pickedFile = await picker.getImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     // You can access the selected image using pickedFile.path
  //     // Add your logic to handle the selected image here
  //   } else {
  //     // Handle the case when the user cancels image selection
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1430286027/photo/information-technology-businessman-working-on-computer-in-office-for-digital-app-software.jpg?s=1024x1024&w=is&k=20&c=djTGyzLX2cvk9jtlH2Wetmu49Cn36AqRn5qK4aeWtrI='), // Replace with your profile image URL
            ),
            title: const Text('My Status'),
            subtitle: const Text('Tap to add status update'),
            onTap: () {
              // openGallery();
              // Handle status update
            },
          ),
          const Divider(),
          for (var status in statusItems)
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(status.imageUrl),
              ),
              title: Text(status.username),
              subtitle: Text('Updated ${status.timeAgo}'),
              onTap: () {
                // Handle viewing status
                // openGallery();
              },
            ),
        ],
      ),
    );
  }
}
