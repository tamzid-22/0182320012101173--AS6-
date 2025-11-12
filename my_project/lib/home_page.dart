import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        backgroundColor: Colors.brown,
        foregroundColor: Colors.greenAccent,
        title: Text("My Flutter Project"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        elevation: 50,
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 141, 33, 25)),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.home),
            title: Text("HomePage"),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
          ),
        ],
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to homepage",
                style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 30)),
              ),
              Image.asset('assets/images/flutter.png', height: 50),
              Image.asset(
                'assets/images/images.jpeg',
                height: 400,
                fit: BoxFit.fill,
              ),
              Image.network(
                'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=500',
              ),
            ],
          ),
        ),
      ),
    );
  }
}