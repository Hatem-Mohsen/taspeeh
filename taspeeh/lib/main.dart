import 'package:flutter/material.dart';

void main() {
  runApp(TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TasbeehHomePage(),
    );
  }
}

class TasbeehHomePage extends StatefulWidget {
  @override
  _TasbeehHomePageState createState() => _TasbeehHomePageState();
}

class _TasbeehHomePageState extends State<TasbeehHomePage> {
  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
      if (counter > 100) {
        counter = 0;
      }
    });
  }

  void _resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FEFD),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(
                  vertical: 80, horizontal: 40), // زيادة المساحة الرأسية
              decoration: BoxDecoration(
                color: Color(0xFF00A072),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    'سُبْحَانَ اللَّهِ',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Arial',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '.يكتب له ألف حسنة أو يحط عنه ألف خطيئة\n100 مرة',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Arial',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFF00A072), width: 9),
              ),
              child: Center(
                child: Text(
                  '$counter',
                  style: TextStyle(
                    fontSize: 60,
                    color: Colors.black,
                    fontFamily: 'Arial',
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00A072),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                textStyle: TextStyle(fontSize: 20, fontFamily: 'Arial'),
              ),
              onPressed: _incrementCounter,
              child: Text(
                'تسبيح',
                style: TextStyle(color: Colors.white), // لون النص أبيض
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF00A072),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                textStyle: TextStyle(fontSize: 20, fontFamily: 'Arial'),
              ),
              onPressed: _resetCounter,
              child: Text(
                'اعادة',
                style: TextStyle(color: Colors.white), // لون النص أبيض
              ),
            ),
          ],
        ),
      ),
    );
  }
}
