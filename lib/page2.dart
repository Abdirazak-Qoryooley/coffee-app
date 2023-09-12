import 'package:coffe_app/data.dart';
import 'package:coffe_app/item1_cuppucino.dart';
import 'package:coffe_app/item2_cold.dart';
import 'package:coffe_app/item3_espresso.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 3, vsync: this);
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Favorite',
      style: optionStyle,
    ),
    Text(
      'Index 2: Cart',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 10,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Image.asset(
                      'images/5.png',
                      width: 55,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 82.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'Mog, ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'somalia',
                      style: TextStyle(fontSize: 18),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.notifications))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text(
                'Good morning Bocor',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 1.6),
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search coffee',
                      hintStyle: TextStyle(fontSize: 18),
                      prefixIcon: Icon(Icons.search),
                      // suffixIcon: Icon(
                      //   Icons.search,
                      // ),
                      border: InputBorder.none),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                'Categories',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff000532D),
                  borderRadius: BorderRadius.circular(12)),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(text: 'Coppuccino'),
                    Tab(text: 'Cold Brew'),
                    Tab(text: 'Espresso'),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 270,
              width: 400,
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: get,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 300,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => itemc()));
                                    },
                                    child: Image.asset(
                                      getadata[i].image,
                                      width: 155,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 28.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getadata[i].name,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'With choccolate',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$5.12',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Color(0xff000532D),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Icon(
                                              CupertinoIcons.plus,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 300,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => item2()));
                                    },
                                    child: Image.asset(
                                      getaanotherdata[i].image,
                                      width: 155,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 28.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getaanotherdata[i].name,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'With choccolate',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$6.12',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Color(0xff000532D),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Icon(
                                              CupertinoIcons.plus,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 200,
                            height: 300,
                            margin: const EdgeInsets.only(
                                right: 10, top: 10, bottom: 0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 14,
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => item3()));
                                    },
                                    child: Image.asset(
                                      getotherdata[i].image,
                                      width: 155,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 28.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        getotherdata[i].name,
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'With choccolate',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            getotherdata[i].price,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Spacer(),
                                          Container(
                                            margin: EdgeInsets.only(right: 20),
                                            width: 35,
                                            height: 35,
                                            decoration: BoxDecoration(
                                                color: Color(0xff000532D),
                                                borderRadius:
                                                    BorderRadius.circular(50)),
                                            child: Icon(
                                              CupertinoIcons.plus,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 230.0),
                  child: Text(
                    'Special Offer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        // offset: Offset(1, 0),
                        blurRadius: 1,
                        spreadRadius: 1,
                        blurStyle: BlurStyle.normal),
                  ]),
              child: Container(
                margin: EdgeInsets.all(14),
                child: ListView.builder(
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return Container(
                      // height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 3),
                                blurRadius: 7,
                                color: Colors.white),
                          ]),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Row(
                            children: [
                              Image.asset(
                                'images/11.png',
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: Color(0xff0C69D6F),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Text('Discount Sales')),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Get three ice Flavoured',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'cappuccinos for the',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          )),
                    );
                  }),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[100],
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'Favorite',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
                backgroundColor: Colors.grey),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_sharp),
                label: 'Person',
                backgroundColor: Colors.grey),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xff000532D),
          onTap: _onItemTapped,
        ));
  }
}
