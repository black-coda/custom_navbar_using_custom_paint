import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        elevation: 2,
        title: const Text("Custom Navbar"),
        centerTitle: true,
        backgroundColor: const Color(0xff4f9098),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(color: Colors.black45),
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    painter: BNBPainter(),
                    size: Size(
                      size.aspectRatio,
                      80,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class BNBcustomPainter extends CustomPj

class BNBPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
  }

  @override
  bool shouldRepaint(BNBPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BNBPainter oldDelegate) => false;
}
