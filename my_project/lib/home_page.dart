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
              decoration: BoxDecoration(color: const Color.fromARGB(255, 37, 128, 40)),
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

      body: SingleChildScrollView(
        child: Container(
          height: 500,
          width: 350,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 78, 72, 19), const Color.fromARGB(255, 81, 46, 34)],
            ),
            border: Border.all(color: const Color.fromARGB(255, 97, 19, 111), width: 5),
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome to homepage",
                style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 30)),
              ),
             Image.asset('assets/images/Astronauts.jpg', height: 100),


              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        // backgroundColor: Colors.black,
                        // foregroundColor: Colors,
                        // fixedSize: Size(200, 20),
                      ),
                      child: Text("Elevated"),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        // backgroundColor: Colors.red,
                        // foregroundColor: Colors.green,
                        // fixedSize: Size(200, 20),
                      ),
                      child: Text("Text"),
                    ),
                    OutlinedButton(onPressed: () {}, child: Text("Outlined")),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              Container(height: 100, width: 100, color: const Color.fromARGB(255, 44, 81, 99)),
              // Image.asset(
              //   'assets/images/images.jpeg',
              //   height: 400,
              //   fit: BoxFit.fill,
              // ),
              // Image.network(
              //   'https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=500',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}