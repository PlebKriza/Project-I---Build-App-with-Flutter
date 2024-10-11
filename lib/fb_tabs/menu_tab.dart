import 'package:flutter/material.dart';

class MenuTab extends StatefulWidget {
  const MenuTab({Key? key}) : super(key: key);

  @override
  _MenuTabState createState() => _MenuTabState();
}

class _MenuTabState extends State<MenuTab> {
  Color seeMoreColor = Colors.grey[200]!;
  Color logoutColor = Colors.grey[200]!;

  void _onSeeMoreTap() {
    setState(() {
      seeMoreColor = Colors.grey[300]!;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        seeMoreColor = Colors.grey[200]!;
      });
    });
  }

  void _onLogoutTap() {
    setState(() {
      logoutColor = Colors.grey[300]!;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        logoutColor = Colors.grey[200]!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Menu',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.settings),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('assets/images/My_profile.png'),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Me Myself and I',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Icon(Icons.arrow_drop_down),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Divider(color: Colors.grey[300]!),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue[50],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          'Create new profile or Page',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              childAspectRatio: 2,
              children: [
                buildMenuRow(context, Icons.access_time, "Memories"),
                buildMenuRow(context, Icons.bookmark, "Saved"),
                buildMenuRow(context, Icons.group, "Groups"),
                buildMenuRow(context, Icons.videocam, "Video"),
                buildMenuRow(context, Icons.store, "Marketplace"),
                buildMenuRow(context, Icons.person_search, "Find friends"),
                buildMenuRow(context, Icons.feed, "Feeds"),
                buildMenuRow(context, Icons.favorite, "Dating"),
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: _onSeeMoreTap,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  color: seeMoreColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "See more",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 10),
            buildMenuRowWithDropdown(context, Icons.help, "Help & support"),
            const SizedBox(height: 10),
            buildMenuRowWithDropdown(context, Icons.settings, "Settings & privacy"),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.grid_view, size: 24, color: Colors.blue),
                      const SizedBox(width: 12),
                      const Text(
                        'Also from Meta',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: _onLogoutTap,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                decoration: BoxDecoration(
                  color: logoutColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Log out",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuRow(BuildContext context, IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMenuRowWithDropdown(BuildContext context, IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 12.0, 8.0, 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.blue, size: 24),
              const SizedBox(width: 12),
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ],
          ),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
