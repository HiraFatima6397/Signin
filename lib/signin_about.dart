import :'package:flutter/material.dart';
import :'package:signin_screen/sign_in.dart';
import :'package:signin_screen/add_hobbies.dart';



class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: (index) => setState(() => _currentIndex = index),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.arrow_drop_down_circle,
                        color: Colors.grey,
                        size: 40,
                      ),
                      label: '',
                      backgroundColor: Colors.white),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.thumb_up, color: Colors.grey, size: 40),
                      label: 'like'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.message_sharp,
                          color: Colors.grey, size: 40),
                      label: 'massage'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_rounded,
                          color: Colors.grey, size: 40),
                      label: 'contect')
                ]),
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                       child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignIn()));
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    StringConstant.tellusbitaboutyou,
                                    style: TextStyle(
                                        fontSize: 33,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    StringConstant.name,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                      decoration: InputDecoration(
                                          hintText: StringConstant.name,
                                          hintStyle: TextStyle(fontSize: 20),
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)))),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    StringConstant.dateofbirth,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        hintText: StringConstant.dateofbirth,
                                        suffixIcon: Icon(Icons.calendar_today,
                                            color: Colors.grey[300]),
                                        hintStyle: TextStyle(fontSize: 20),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10))),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    StringConstant.Gender,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(width: 2)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TabBar(
                                          unselectedLabelColor:
                                              Colors.redAccent,
                                          indicatorSize:
                                              TabBarIndicatorSize.tab,
                                          indicator: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Color(0xFF79e9fc)),
                                          tabs: [
                                            Tab(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.male,
                                                      size: 30,
                                                      color: Colors.black),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(StringConstant.male,
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                            ),
                                            Tab(
                                              child: Row(
                                                children: [
                                                  Icon(Icons.female,
                                                      size: 30,
                                                      color: Colors.black),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                        StringConstant.female,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 20)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 130,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                              builder: (context) => Screen4()));
                                    },
                                    child: Container(
                                      height: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              color: Colors.deepOrangeAccent,
                                              width: 2)),
                                      child: Center(
                                          child: Text(
                                        StringConstant.nextstep,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.deepOrangeAccent,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ]),
                          ])),
                ]),
              ),
            )));
  }
}
