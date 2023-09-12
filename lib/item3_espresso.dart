import 'package:coffe_app/data.dart';
import 'package:coffe_app/page2.dart';
import 'package:flutter/material.dart';

class item3 extends StatelessWidget {
  const item3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08C673E),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 300,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                        image: AssetImage('images/ess2.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => page2()));
                                    },
                                    child: Icon(Icons.arrow_back)),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Icon(Icons.favorite_border_outlined)),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(top: 180, right: 200),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Espresso',
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: Text(
                              'With chocolate',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 360,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 3,
                    ),
                    Container(
                        margin: EdgeInsets.all(18),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(50)),
                        child: Column(children: [
                          Row(
                            children: [
                              Image.asset(
                                'images/be.png',
                                width: 20,
                                color: Color(0xff08C673E),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Coffee',
                                style: TextStyle(fontSize: 14),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 25,
                                child: VerticalDivider(
                                  color: Colors.black,
                                  endIndent: 1,
                                  thickness: 1,
                                  indent: 1,
                                  width: 10,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'images/bar.png',
                                    width: 20,
                                    color: Color(0xff08C673E),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Chocolate',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 25,
                                    child: VerticalDivider(
                                      color: Colors.black,
                                      endIndent: 1,
                                      thickness: 1,
                                      indent: 1,
                                      width: 10,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/hot.png',
                                        width: 20,
                                        color: Color(0xff08C673E),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'Medium roosted',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ])),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Text(
                            'Coffee Size',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 40),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff000532D),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Small',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(child: Text('Medium')),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(child: Text('Large')),
                          ),
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 2,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 42.0, top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                  'caapuccino is the richest of all types of coffee types and'),
                              Text(
                                  'hence uses cream instead of milk ass the primary'),
                              Row(
                                children: [
                                  Text(
                                      'ingredient along with double aspresso......'),
                                  Text(
                                    'Read more',
                                    style: TextStyle(color: Color(0xff000532D)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          color: Color(0xff000532D),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: GestureDetector(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => page2()));
                        },
                        child: Row(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 12.0),
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 60),
                              height: 25,
                              // ignore: prefer_const_constructors
                              child: VerticalDivider(
                                color: Colors.white,
                                indent: 1,
                                endIndent: 1,
                                thickness: 1,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              '\$10.12',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                      )),
                    )
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
