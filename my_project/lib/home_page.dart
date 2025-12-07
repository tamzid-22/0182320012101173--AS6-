import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 36, 117),
        foregroundColor: const Color.fromARGB(255, 23, 147, 87),
        title: const Text("My Flutter Project"),
        actions: const [
          IconButton(onPressed: null, icon: Icon(Icons.search)),
          IconButton(onPressed: null, icon: Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        elevation: 6,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 37, 128, 40)),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
              currentAccountPicture:
                  CircleAvatar(child: Icon(Icons.person)),
            ),
            ListTile(
              onTap: () => Navigator.pop(context),
              leading: const Icon(Icons.home),
              title: const Text("HomePage"),
            ),
            const Divider(),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (c) => const ProfilePage()));
              },
              leading: const Icon(Icons.person),
              title: const Text("ProfilePage"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 78, 72, 19),
                    Color.fromARGB(255, 81, 46, 34)
                  ],
                ),
                border: Border.fromBorderSide(BorderSide(
                    color: Color.fromARGB(255, 97, 19, 111), width: 5)),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome",
                    style: GoogleFonts.lobster(
                      textStyle: const TextStyle(
                          fontSize: 40, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Image.asset('assets/images/Astronauts.jpg', height: 120),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (c) => const ProfilePage()));
                          },
                          child: const Text("Profile"),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Text"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 100,
                    width: 100,
                    color: const Color.fromARGB(255, 44, 81, 99),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}