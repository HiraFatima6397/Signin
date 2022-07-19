import 'package:flutter/material.dart';

import 'Screen2.dart';
import 'Stringconstant/Constant.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
              Center(
                  child: Text(
                StringConstant.helloagain,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              )),
              SizedBox(
                height: 10,
              ),
              Center(
                  child: Text(
                StringConstant.signintoyouraccount,
                style: TextStyle(fontSize: 17, color: Colors.grey),
              )),
              SizedBox(
                height: 40,
              ),
              Text(
                StringConstant.Emailaddress,
                style: TextStyle(fontSize: 18,),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: StringConstant.profilegmail,
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                StringConstant.password,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: StringConstant.Enteryourpass,
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey[350]),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(StringConstant.forgotpassword,
                    style: TextStyle(
                        fontSize: 17,
                        decoration: TextDecoration.underline,
                        color: Colors.grey[600])),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Screen2()));

              },
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.orangeAccent,
                          offset: Offset(0, 5),
                          blurRadius: 14,
                          spreadRadius: -3),
                    ],
                    color: Colors.orange,
                  ),
                  child: Center(
                      child: Text(
                    StringConstant.signin,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                StringConstant.orwith,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              )),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 40, top: 10, left: 70, bottom: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/google.jpg',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(StringConstant.signinwithgoogle,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 3)),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 40, top: 10, left: 70, bottom: 10),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/fb.jpg',
                        height: 30,
                        width: 30,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(StringConstant.signinwithgoogle,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(StringConstant.donthaveaccount,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey)),
                  Text('Sign Up',style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold,decoration:TextDecoration.underline,fontSize: 18),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
