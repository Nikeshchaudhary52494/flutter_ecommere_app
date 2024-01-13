import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User profile"),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Colors.grey),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  'lib/images/userProfile.avif',
                  width: 150,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 0.2,
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Name :",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  Text(
                    "Nikesh chaudhary",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Email :",
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  ),
                  Text(
                    "nikesh@gmail.com",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
