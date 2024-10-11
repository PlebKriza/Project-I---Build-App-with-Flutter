import 'package:fb_clone_v4/fb_tabs/friends_tab.dart';
import 'package:fb_clone_v4/fb_tabs/marketplace_tab.dart';
import 'package:fb_clone_v4/fb_tabs/menu_tab.dart';
import 'package:fb_clone_v4/fb_tabs/notifications_tab.dart';
import 'package:fb_clone_v4/fb_tabs/videos_tab.dart';
import 'package:flutter/material.dart';
import 'fb_tabs/home_tab.dart';

void main() {
  runApp(FacebookCloneApp());
}
class FacebookCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Facebook Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: FacebookHomePage(),
    );
  }
}

class FacebookHomePage extends StatefulWidget {
  @override
  _FacebookHomePageState createState() => _FacebookHomePageState();
}

class _FacebookHomePageState extends State<FacebookHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              
            },
          ),
          IconButton(
            icon: Icon(Icons.chat, color: Colors.black),
            onPressed: () {
              
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          tabs: const [
            Tab(icon: Icon(Icons.home)),
            Tab(icon: Icon(Icons.ondemand_video)),
            Tab(icon: Icon(Icons.people)),
            Tab(icon: Icon(Icons.store)),
            Tab(icon: Icon(Icons.notifications)),
            Tab(icon: Icon(Icons.menu)),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          HomeTab(),
          VideosTab(),
          FriendsTab(),
          MarketplaceTab(),
          NotificationsTab(),
          MenuTab(),
        ],
      ),
    );
  }
}
