import "package:flutter/material.dart";
import "package:flutter_ecpmmerce_app/widgets/drawer.dart";
import "package:flutter_ecpmmerce_app/widgets/search_bar.dart";

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
        backgroundColor: const Color.fromARGB(255, 18, 181, 135),
        // backgroundColor: Colors.green[500],
        title: Image.asset(
          'lib/images/fetchme.png',
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              // Handle shopping cart action
            },
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: const Column(
        children: [MySearchBar()],
      ),
    );
  }
}
