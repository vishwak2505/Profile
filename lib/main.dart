import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Widgets/SteamBuild.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DetailsPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7A9BEE),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('PROFILE',
            style: TextStyle(
                fontFamily: 'Montserrat', fontSize: 30.0, color: Colors.white)),
        centerTitle: true,
      ),
      body: StreamBuild(),
    );
  }
}
