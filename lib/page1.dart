import 'package:coffe_app/page2.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08C673E),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Image.asset(
                'images/1.png',
                width: 310,
              ),
            ),
            Column(
              children: [
                Text(
                  'Coffee so good',
                  style: TextStyle(
                      fontSize: 30,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9.0),
              child: Text(
                'your tast buds ',
                style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'will love it',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              'the best grain, the finest roast, the',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
            Text(
              'most powerful flavor',
              style: TextStyle(color: Colors.black54),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  color: Color(0xff000532D),
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => page2()));
                },
                child: Text(
                  'Get started',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )),
            )
          ],
        ),
      ),
    );
  }
}
