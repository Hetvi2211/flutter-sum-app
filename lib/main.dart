import 'package:flutter/material.dart';
import 'SecondScreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Practice App',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Sum App'),
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
  final TextEditingController txt1 = TextEditingController();
  final TextEditingController txt2 = TextEditingController();
  final AudioPlayer myplayer = AudioPlayer();

  String msg = "";

  void doSum() {
    String no1 = txt1.text.trim();
    String no2 = txt2.text.trim();

    if (no1.isEmpty || no2.isEmpty) {
      setState(() {
        msg = "⚠️ Please enter both numbers";
      });
      return;
    }

    try {
      int sum = int.parse(no1) + int.parse(no2);
      setState(() {
        msg = "✅ The sum is $sum";
      });
    } catch (e) {
      setState(() {
        msg = "❌ Invalid input! Please enter numbers only.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.teal,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Simple Sum Calculator',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Image
              Image.asset("assets/images/sum.jpg", height: 150),

              const SizedBox(height: 20),

              // Input Fields
              TextField(
                controller: txt1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter first number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                controller: txt2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter second number",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),

              // Sum Button
              ElevatedButton(
                onPressed: doSum,
                child: const Text("Calculate Sum"),
              ),

              const SizedBox(height: 20),

              // Result
              Text(
                msg,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),

              const Divider(height: 40, thickness: 2),

              // Navigation & Toast Section
              const Text("Navigation & Toast",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondScreen()),
                  );
                  Fluttertoast.showToast(
                    msg: "Navigating to Second Screen...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: const Text("Go to Second Screen"),
              ),

              ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                    msg: "This is a practice Toast!",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    backgroundColor: Colors.blue,
                    textColor: Colors.white,
                    fontSize: 16.0,
                  );
                },
                child: const Text("Show Toast"),
              ),

              const Divider(height: 40, thickness: 2),

              // Music Section
              const Text("Audio Player",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),

              ElevatedButton(
                onPressed: () async {
                  await myplayer.play(AssetSource("music/AP.mp3"));
                },
                child: const Text("Play Music"),
              ),
              ElevatedButton(
                onPressed: () async {
                  await myplayer.pause();
                },
                child: const Text("Pause Music"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
