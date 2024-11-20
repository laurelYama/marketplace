import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marketplace/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marketplace',
      theme: ThemeData(
        fontFamily: 'Arial',
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // En-tête avec localisation et notifications
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Color(0xFF3FCA75), size: 30),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Express delivery",
                              style: TextStyle(fontSize: 12, color: Colors.black54),
                            ),
                            Text(
                              "Leipzig Street, 21",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Icon(Icons.notifications_none, size: 30),
                  ],
                ),
                const SizedBox(height: 20),

                // Barre de recherche
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search, size: 24, color: Colors.black54),
                      suffixIcon: const Icon(Icons.qr_code_scanner, color: Colors.black54),
                      hintText: 'Search',
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Liste des catégories
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildCategoryCard(
                          "https://images-na.ssl-images-amazon.com/images/I/718A1ee0UgL._AC_SL1500_.jpg", "Home"),
                          
                      const SizedBox(width: 10),
                      _buildCategoryCard(
                          "https://th.bing.com/th/id/R.fd5dce8196ea0e2d1d36abf4fcb0657f?rik=%2bRiIgyzIiIrJTQ&pid=ImgRaw&r=0",
                          "Clothes"),
                      const SizedBox(width: 10),
                      _buildCategoryCard(
                          "https://hips.hearstapps.com/hmg-prod/images/apple-macbook-air-laptop-computer-with-a-gold-finish-taken-news-photo-1626793871.jpg",
                          "Electronics"),
                      const SizedBox(width: 10),
                      _buildCategoryCard(
                          "https://th.bing.com/th/id/OIP.ST_OUoAR5BNtBzyLbHR7dwAAAA?rs=1&pid=ImgDetMain", "Shoes"),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Bannière de promotion
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFF3FCA75),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Down payment 0%',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Action from 1 - 30 April',
                            style: TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
              // Utilisez Navigator.push pour naviguer vers la page HomePage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()), // Remplacez HomePage() par votre propre page si nécessaire
              );
            },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: const Color(0xFF3FCA75),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Shop Now'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Section "Pour vous"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'For you',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Prices of the day',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View all >',
                      style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Liste des produits
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 2, // Limité à 2 produits
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return _buildProductCard(
                        "Glass, light blue",
                        "49 € ",
                        
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8YjGv1QXivviJ-lFtkv7AhL_Vjvcgk9gNVrgZFu3Pt8FDIpn2OYHWbWqwZUQ70kTt69g&usqp=CAU",
                        "https://images-na.ssl-images-amazon.com/images/I/718A1ee0UgL._AC_SL1500_.jpg",
                      );
                    } else if (index == 1) {
                      return _buildProductCard(
                        "swivel chair",
                        "120 €",
                        
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRi4CF-E8JT5WGm8IZy6dhdL9MbsRoT8TMjjA&s",
                        "https://th.bing.com/th/id/R.fd5dce8196ea0e2d1d36abf4fcb0657f?rik=%2bRiIgyzIiIrJTQ&pid=ImgRaw&r=0",
                      );
                    } else {
                      return Container(); // Par sécurité
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home)),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card)),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(icon: Icon(Icons.favorite)),
          BottomNavigationBarItem(icon: Icon(Icons.settings)),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String imageUrl, String categoryName) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          categoryName,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  

  Widget _buildProductCard(
    String name,

    String discountedPrice,
    String imageUrl,
    String secondaryImageUrl,
  ) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 4),
                
                Row(
                  children: [
                    Text(
                      discountedPrice,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

