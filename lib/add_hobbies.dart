import 'package:flutter/material.dart';
import 'package:signin_screen/signin_About.dart';

import 'Stringconstant/Constant.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  int _currentIndex = 0;
  final List item = [
    {'title': 'Astronomy'},
    {'title': 'Birdwatching'},
    {'title': 'Badminton'},
    {'title': 'Camping'},
    {'title': 'Chess'},
    {'title': 'Dance'},
    {'title': 'Drawing'},
    {'title': 'Fitness'},
    {'title': 'Fishing'},
    {'title': 'Golf'},
    {'title': 'Hiking'},
    {'title': 'Kayaking'},
    {'title': 'Music'},
    {'title': 'Origaml'},
    {'title': 'Photography'},
    {'title': 'Rock climing'},
    {'title': 'Surling'},
    {'title': 'Tennis'},
    {'title': 'Trainspotting'},
    {'title': 'Yoga'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  icon: Icon(Icons.message_sharp, color: Colors.grey, size: 40),
                  label: 'massage'),
              BottomNavigationBarItem(
                  icon:
                      Icon(Icons.person_rounded, color: Colors.grey, size: 40),
                  label: 'contect')
            ]),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Screen3()));
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                        child: Text(
                      StringConstant.addhobbies,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      StringConstant.Search,
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          labelText: StringConstant.searchforhobbies,
                          prefixIcon: Icon(Icons.search_sharp, size: 30),
                          labelStyle: TextStyle(fontSize: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 500,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        child: GridView.count(
                          crossAxisCount: 2,
                          mainAxisSpacing:20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 4,
                          children: List.generate(item.length, (index) {
                            print('listlength:${item[index]['title']}');
                            return _buildCardViewWidget(
                              title: item[index]['title'],
                            );
                          }),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ));
  }

  _buildCardViewWidget({
    required String title,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(width: 2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
