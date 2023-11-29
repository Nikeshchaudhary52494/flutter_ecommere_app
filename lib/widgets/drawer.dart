import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(
                child: Image.asset(
                  'lib/images/fetchme.png',
                  color: const Color.fromARGB(255, 18, 181, 135),
                  width: 300,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: ListTile(
                  leading: Icon(
                    Icons.light_mode,
                  ),
                  title: Text(
                    "Theme",
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 24),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                  ),
                  title: Text(
                    "about",
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              bottom: 20,
              left: 24,
            ),
            child: ListTile(
              leading: Icon(
                Icons.logout_rounded,
              ),
              title: Text(
                "Logout",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
