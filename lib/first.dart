
import 'package:flutter/material.dart';
import 'package:hindi_shayari/second.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  List<String> titles = [
    "Motivational",
    "Friendship",
    "Love",
    "Mornimg",
    "Brokenheart",
    "Romantic"
  ];
  List<String> photos = [
    "image/motivation.jpg",
    "image/friend.jpg",
    "image/love.jpg",
    "image/morning.jpg",
    "image/broken heart.jpg",
    "image/romantic.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text("Theme"),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text("Setting"),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Shayari"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.pink, Colors.pinkAccent])),
        ),
        elevation: 15,
        titleSpacing: 20,
      ),
      body: ListView.builder(

        itemCount: titles.length,
        itemBuilder: (context, index) {
          return  Card(
            elevation: 10,
            margin: EdgeInsets.all(20),

            color: Colors.lightGreen[500],
            child: ListTile(
              leading: Image.asset(
                photos[index],
                height: 100,
                width: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                titles[index],
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return second(titles[index], photos[index], index);
                  },
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
