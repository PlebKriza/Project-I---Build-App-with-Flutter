import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildPostCreationBar(),
        const Divider(thickness: 1),
        _buildStoriesSection(),
        const Divider(thickness: 10),
        _buildPost(
          context,
          profileImagePath: 'assets/images/profile1.png',
          username: 'Eleanor Knox',
          timeAgo: '2 hrs',
          postContent: 'Had a great day at the park with friends!',
          postImagePath: 'assets/images/post_image1.jpg',
          likeCount: 120,
          commentCount: 50,
        ),
        _buildPost(
          context,
          profileImagePath: 'assets/images/profile2.png',
          username: 'Jane Smith',
          timeAgo: '5 hrs',
          postContent: 'Check out this amazing sunset I captured!',
          postImagePath: 'assets/images/post_image2.jpg',
          likeCount: 300,
          commentCount: 80,
        ),
      ],
    );
  }

  Widget _buildPostCreationBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/My_profile.png'),
            radius: 20,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.photo, color: Colors.green),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildStoriesSection() {
    final List<String> storyImages = [
      'assets/images/story1.jpg',
      'assets/images/story2.jpg',
      'assets/images/story3.jpg',
      'assets/images/story4.jpg',
      'assets/images/story5.jpg',
    ];

    final List<String> profileImages = [
      'assets/images/profile1.png',
      'assets/images/profile2.png',
      'assets/images/profile3.png',
      'assets/images/profile4.png',
      'assets/images/profile5.png',
    ];

    final List<String> storyNames = [
      'Eleanor Knox',
      'Jane Smith',
      'John Doe',
      'Alice Johnson',
      'Bob Brown',
    ];

    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storyImages.length,
        itemBuilder: (context, index) {
          return _buildStoryCard(
            storyImages[index],
            profileImages[index],
            storyNames[index],
          );
        },
      ),
    );
  }

  Widget _buildStoryCard(String storyImagePath, String profileImagePath, String username) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(storyImagePath, height: 100, fit: BoxFit.cover),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: CircleAvatar(
                  backgroundImage: AssetImage(profileImagePath),
                  radius: 15,
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Text(username, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _buildPost(
    BuildContext context, {
    required String profileImagePath,
    required String username,
    required String timeAgo,
    required String postContent,
    required String postImagePath,
    required int likeCount,
    required int commentCount,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(profileImagePath),
                  radius: 20,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(username, style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(timeAgo, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(postContent),
            const SizedBox(height: 10),
            Image.asset(postImagePath),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 16),
                const SizedBox(width: 5),
                Text('$likeCount', style: TextStyle(color: Colors.grey[600])),
                const SizedBox(width: 20),
                Icon(Icons.comment, color: Colors.grey, size: 16),
                const SizedBox(width: 5),
                Text('$commentCount', style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
