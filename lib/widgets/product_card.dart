import "package:flutter/material.dart";

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                offset: const Offset(20, 20),
                blurRadius: 25)
          ],
          border: Border.all(
            color: Colors.grey,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Image.network(
            "https://m.media-amazon.com/images/I/61lKQWyMdDL._SX679_.jpg",
            width: 300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Text(
                    'Iphone 14',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "\$200",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                ],
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Set the background color here
                ),
                child: IconButton(
                  onPressed: () {
                    // Add your onPressed logic here
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white, // Set the icon color here
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
