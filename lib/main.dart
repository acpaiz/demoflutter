import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AboutPage(),
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.teal[400],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/fotodiri.png'),
              ),
              SizedBox(height: 24),
              
              // Name
              Text(
                'Achmad Faiz',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[900],
                ),
                textAlign: TextAlign.center,
              ),
              
              // NRP
              Text(
                'NRP: 5026221100',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.teal[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              
              // Fun Facts Section
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fun Facts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal[800],
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Icon(Icons.fastfood, color: Colors.teal),
                      title: Text(
                        'Sehari makan nasi 4 kali',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.travel_explore, color: Colors.teal),
                      title: Text(
                        'Masa kecil pindah pindah kota',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
