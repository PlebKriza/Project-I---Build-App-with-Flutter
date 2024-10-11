import 'package:flutter/material.dart';

class VideosTab extends StatelessWidget {
  const VideosTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildVideoCard(
          videoThumbnail: 'assets/images/video1.jpg',
          videoTitle: 'Amazing Nature Compilation',
          views: '1.5M views',
          timeAgo: '3 days ago',
        ),
        _buildVideoCard(
          videoThumbnail: 'assets/images/video2.jpg',
          videoTitle: 'Top 10 Funny Moments',
          views: '2M views',
          timeAgo: '1 week ago',
        ),
        _buildVideoCard(
          videoThumbnail: 'assets/images/video3.jpg',
          videoTitle: 'How to Cook the Perfect Steak',
          views: '500K views',
          timeAgo: '2 days ago',
        ),
        _buildVideoCard(
          videoThumbnail: 'assets/images/video4.jpg',
          videoTitle: 'Best Travel Destinations',
          views: '800K views',
          timeAgo: '4 days ago',
        ),
      ],
    );
  }

  Widget _buildVideoCard({
    required String videoThumbnail,
    required String videoTitle,
    required String views,
    required String timeAgo,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(videoThumbnail, fit: BoxFit.cover),
              IconButton(
                icon: Icon(Icons.play_circle_filled, color: Colors.white, size: 50),
                onPressed: () {
                  
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(videoTitle, style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text('$views • $timeAgo', style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
