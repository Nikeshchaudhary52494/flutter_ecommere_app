import "package:flutter/material.dart";
import "package:flutter_ecommerce_app/screens/cart_screen.dart";
import "package:flutter_ecommerce_app/screens/user_profile_screen.dart";
import "package:flutter_ecommerce_app/widgets/drawer.dart";
import "package:flutter_ecommerce_app/widgets/product_card.dart";
import "package:flutter_ecommerce_app/widgets/search_bar.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 18, 181, 135),
        title: Image.asset(
          'lib/images/fetchme.png',
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const UserProfileScreen()),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const Column(
        children: [
          MySearchBar(),
          ProductCard(),
        ],
      ),
    );
  }
}
