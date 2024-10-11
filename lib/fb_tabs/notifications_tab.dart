import 'package:flutter/material.dart';

class NotificationsTab extends StatelessWidget {
  const NotificationsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildNotificationItem(
          profileImage: 'assets/images/profile1.png',
          notificationText: 'You have a new friend request from John Doe.',
          time: '2 mins ago',
        ),
        _buildNotificationItem(
          profileImage: 'assets/images/profile2.png',
          notificationText: 'Jane Smith commented on your post.',
          time: '5 mins ago',
        ),
        _buildNotificationItem(
          profileImage: 'assets/images/profile3.png',
          notificationText: 'Mark Johnson commented on your post.',
          time: '10 mins ago',
        ),
      ],
    );
  }

  Widget _buildNotificationItem({
    required String profileImage,
    required String notificationText,
    required String time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              profileImage,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(notificationText),
                const SizedBox(height: 5),
                Text(
                  time,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
