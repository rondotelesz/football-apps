import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text("Gila Bola"),
        ),
        backgroundColor: Colors.orange[500],
      ),
      backgroundColor: Colors.orange[100],
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                "Jonny Calisto Ramos Dacosta",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
              accountEmail: Text("jonny123@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/foto.jpeg"),
              ),
              decoration: BoxDecoration(color: Colors.orange[700]),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil"),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Pengaturan"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang Aplikasi"),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              MyMenu(
                title: "Berita Terbaru",
                icon: Icons.new_releases, 
              ),
              MyMenu(
                title: "Jadwal Pertandingan",
                icon: Icons.event, 
              ),
              MyMenu(
                title: "World Cup 2022",
                icon: Icons.sports_soccer, 
              ),
              MyMenu(
                title: "Liga 1 BRI",
                icon: Icons.sports_football, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  final String title;
  final IconData icon;

  MyMenu({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.orange,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 200,
              height: 185,
              child: Center(
                child: Icon(
                  icon,
                  size: 100.0,
                  color: Colors.orange,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
