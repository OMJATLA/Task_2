import 'package:flutter/material.dart';
import 'package:task_1/services/remote_service_1.dart';
import 'package:task_1/services/remote_service_2.dart';
import './constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //api 1
  String? category1_api1;
  String? category2_api1;
  String? category3_api1;
  String? name1_api1;
  String? name2_api1;
  String? name3_api1;
  int? lesson1_api1;
  int? lesson2_api1;
  int? lesson3_api1;

  //api 2
  String? category1_api2;
  String? category2_api2;
  String? category3_api2;
  String? name1_api2;
  String? name2_api2;
  String? name3_api2;
  int? duration1_api2;
  int? duration2_api2;
  int? duration3_api2;

  bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    getData1();
    getData2();
  }

  getData1() async {
    //api1 data

    var data_1 = await remote_service_1().getData_1();

    setState(() {
      category1_api1 = data_1['items'][0]['category'];
      category2_api1 = data_1['items'][1]['category'];
      category3_api1 = data_1['items'][2]['category'];
      name1_api1 = data_1['items'][0]['name'];
      name2_api1 = data_1['items'][1]['name'];
      name3_api1 = data_1['items'][2]['name'];
      lesson1_api1 = data_1['items'][0]['lesson'];
      lesson2_api1 = data_1['items'][1]['lesson'];
      lesson3_api1 = data_1['items'][2]['lesson'];
      if (data_1 != null) {
        isLoaded = true;
      }
    });
  }

  getData2() async {
    //api1 data

    var data_2 = await remote_service_2().getData_2();

    category1_api2 = data_2['items'][1]['category'];
    category2_api2 = data_2['items'][8]['category'];
    category3_api2 = data_2['items'][14]['category'];
    name1_api2 = data_2['items'][1]['name'];
    name2_api2 = data_2['items'][8]['name'];
    name3_api2 = data_2['items'][14]['name'];
    duration1_api2 = data_2['items'][1]['duration'];
    duration2_api2 = data_2['items'][8]['duration'];
    duration3_api2 = data_2['items'][14]['duration'];

    setState(() {
      if (data_2 != null) {
        isLoaded = true;
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Visibility(
        visible: isLoaded,
        child: Scaffold(
          // backgroundColor: k1stHalfBG,
          //column
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(12),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'images/Menu.png',
                        width: 24,
                      ),
                      Expanded(child: SizedBox.shrink()),
                      Image.asset('images/messageIcon.png'),
                      SizedBox(
                        width: 25,
                      ),
                      Image.asset('images/Bell_Icon.png'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello, Priya!',
                    style: kLoraTextStyle(20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('What do you wanna learn today?',
                      style: kinterTextStyle(
                          FontWeight.w500, Color(0xff6D747A), 12)),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      kBox('images/BookIcon.png', 'Programs'),
                      SizedBox(
                        width: 10,
                      ),
                      kBox('images/HelpIcon.png', 'Get help')
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      kBox('images/BookI1con.png', 'Learn'),
                      SizedBox(
                        width: 10,
                      ),
                      kBox('images/TrackerIcon.png', 'DD Tracker'),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  kCatlogUpperDetails('Programs for you', 'View all'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 268,
                    width: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //frame1
                        kCatlogBox(
                            'images/Frame1.png',
                            '$category1_api1',
                            '$name1_api1',
                            '$lesson1_api1 lessons',
                            'images/lock.png',
                            137),
                        SizedBox(
                          width: 20,
                        ),
                        //frame2
                        kCatlogBox(
                            'images/frame2.png',
                            '$category1_api2',
                            '$name1_api2',
                            '$duration1_api2 hours',
                            'images/lock.png',
                            147)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  kCatlogUpperDetails('Events and experiences', 'View all'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 280,
                    width: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //frame1
                        kCatlogBox(
                            'images/frame2.png',
                            '$category2_api1',
                            '$name2_api1',
                            '$lesson2_api1 lessons',
                            'images/x-button.png',
                            94),
                        SizedBox(
                          width: 20,
                        ),
                        //frame2
                        kCatlogBox(
                            'images/frame2.png',
                            '$category2_api2',
                            '$name2_api2',
                            '$duration2_api2 hours',
                            'images/x-button.png',
                            106)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  kCatlogUpperDetails('Lessons for you', 'View all'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 280,
                    width: 270,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        //frame1
                        kCatlogBox(
                            'images/frame2.png',
                            '$category3_api1',
                            '$name3_api1',
                            '$lesson3_api1 lessons',
                            'images/lock.png',
                            137),
                        SizedBox(
                          width: 20,
                        ),
                        //frame2
                        kCatlogBox(
                            'images/frame2.png',
                            '$category3_api2',
                            '$name3_api2',
                            '$duration3_api2 hours',
                            'images/lock.png',
                            147)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            selectedLabelStyle:
                kinterTextStyle(FontWeight.w500, kBlueColor, 10),
            showUnselectedLabels: true,
            unselectedItemColor: Color(0xff6D747A),
            selectedItemColor: kBlueColor,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  color: kBlueColor,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/nav2.png'),
                  ),
                  label: 'Learn'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/nav3.png'),
                  ),
                  label: 'Hub'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/nav4.png'),
                  ),
                  label: 'Chat'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/nav5.png'),
                  ),
                  label: 'Profile'),
            ],
          ),
        ),
        replacement: Center(
          child: SpinKitDoubleBounce(size: 100, color: kBlueColor),
        ),
      ),
    );
  }
}
