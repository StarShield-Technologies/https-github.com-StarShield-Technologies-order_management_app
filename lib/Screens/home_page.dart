import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () async {
              FirebaseAuth.instance.signOut();
            },
            icon: const Icon(Icons.login),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(""), // Replace with the user's name
              accountEmail: Text(user!.email.toString()),
              currentAccountPicture: CircleAvatar(
                // Replace with the user's profile picture
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home), // Home icon
              title: Text('Home Page'),
              onTap: () {
                // Navigate to Home
              },
            ),
            ListTile(
              leading: Icon(Icons.person), // Settings icon
              title: Text('My profile'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box), // Settings icon
              title: Text('My order'),
              onTap: () {
                // Navigate to Settings
              },
            ),
            ListTile(
              leading: Icon(Icons.monitor_heart),
              title: Text('My favourites'),
              onTap: () {
                // Navigate to Page 1
              },
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
              onTap: () {
                // Navigate to Page 1
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Navigate to Page 1
              },
            ),
            ListTile(
              title: Text(''),
              onTap: () {
                // Navigate to Page 2
              },
            ),
            // Add more ListTile items as needed
            AboutListTile(
              icon: Icon(Icons.info),
              child: Text('About'),
              applicationName: "order Taker App",
              applicationVersion: "1.0.0",
              applicationLegalese: "© 2023 Your Company",
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(user!.email.toString()),
      ),
    );
  }
}
