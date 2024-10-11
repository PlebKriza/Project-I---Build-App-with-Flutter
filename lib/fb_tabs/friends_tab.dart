import 'package:flutter/material.dart';

class FriendsTab extends StatelessWidget {
  const FriendsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildSearchBar(),
        const SizedBox(height: 10),
        _buildSectionHeader("Friend Requests"),
        _buildFriendRequest(
          context,
          profileImage: 'assets/images/profile1.png',
          name: 'Eleanor Knox',
          mutualFriends: '2 mutual friends',
        ),
        _buildFriendRequest(
          context,
          profileImage: 'assets/images/profile2.png',
          name: 'Jane Smith',
          mutualFriends: '4 mutual friends',
        ),
        const Divider(thickness: 10),
        _buildSectionHeader("People You May Know"),
        _buildSuggestedFriend(
          profileImage: 'assets/images/profile3.png',
          name: 'Michael Scott',
          mutualFriends: '3 mutual friends',
        ),
        _buildSuggestedFriend(
          profileImage: 'assets/images/profile4.png',
          name: 'Regan Linson',
          mutualFriends: '1 mutual friend',
        ),
        _buildSuggestedFriend(
          profileImage: 'assets/images/profile5.png',
          name: 'Pam Beesly',
          mutualFriends: '5 mutual friends',
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search Friends',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey[200],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildFriendRequest(
    BuildContext context, {
    required String profileImage,
    required String name,
    required String mutualFriends,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(profileImage),
        radius: 30,
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(mutualFriends),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Confirm'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          OutlinedButton(
            onPressed: () {},
            child: Text('Delete'),
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestedFriend({
    required String profileImage,
    required String name,
    required String mutualFriends,
  }) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(profileImage),
        radius: 30,
      ),
      title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(mutualFriends),
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text('Add Friend'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
