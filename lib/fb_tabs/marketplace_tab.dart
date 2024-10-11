import 'package:flutter/material.dart';

class MarketplaceTab extends StatelessWidget {
  const MarketplaceTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildTopBar(),
          const SizedBox(height: 10),
          _buildActionButtons(),
          const Divider(thickness: 10),
          _buildSectionHeader("Today's Picks"),
          Expanded(
            child: _buildProductGrid(),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Marketplace",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.edit_square, color: Colors.white),
              label: Text("Sell"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.grey[400],
                foregroundColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.format_list_bulleted_rounded, color: Colors.white),
              label: Text("Categories"),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: Colors.grey[400],
                foregroundColor: Colors.white,
              ),
            ),
          ),
        ],
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

  Widget _buildProductGrid() {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 0.75,
      children: [
        _buildProductCard(
          productImage: 'assets/images/product1.jpg',
          productName: 'Vintage Wooden Chair',
          productPrice: '\฿80',
          location: '2 miles away',
        ),
        _buildProductCard(
          productImage: 'assets/images/product2.jpg',
          productName: 'Modern Office Desk',
          productPrice: '\฿150',
          location: '5 miles away',
        ),
        _buildProductCard(
          productImage: 'assets/images/product3.jpg',
          productName: 'Smartphone - 128GB',
          productPrice: '\฿200',
          location: '1 mile away',
        ),
        _buildProductCard(
          productImage: 'assets/images/product4.jpg',
          productName: 'Bicycle - Blue Bike',
          productPrice: '\฿300',
          location: '3 miles away',
        ),
      ],
    );
  }

  Widget _buildProductCard({
    required String productImage,
    required String productName,
    required String productPrice,
    required String location,
  }) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(productImage),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName, style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(productPrice, style: TextStyle(color: Colors.green, fontSize: 16)),
                const SizedBox(height: 5),
                Text(location, style: TextStyle(color: Colors.grey[600], fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
