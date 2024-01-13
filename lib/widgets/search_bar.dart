import "dart:ffi";

import "package:flutter/material.dart";

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          const SizedBox(width: 8.0),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
          const SizedBox(width: 8.0),
        ],
      ),
    );
  }
}
