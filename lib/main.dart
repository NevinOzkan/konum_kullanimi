import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double enlem = 0.0;
  double boylam = 0.0;

  get Geolacator => null;

  Future<void> konumBilgisiAl() async {
    var LocationAccuracy;
    var konum = await Geolacator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      enlem = konum.latitude;
      boylam = konum.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Enlem: $enlem",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Boylam: $boylam",
              style: TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              child: Text("Konum Bilgisi Al"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
