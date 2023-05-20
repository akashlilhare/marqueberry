import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(6, 20, 46, 1),
        title: Text(
          'Support',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(alignment: Alignment.center, children: [
        Column(children: [
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color(0xff73e3e7),
                  Color(0xffdcc8d1),
                  Color(0xfffedc70),
                ])),
          )),
          Expanded(
              child: Container(
            color: Color.fromRGBO(6, 20, 46, 1),
          )),
        ]),
        Container(
          
          width: width / 1.2,
          height: height / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    labelText: 'Full Name',
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30,top: 50),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    labelText: 'E-Mail',
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30, right: 30, top: 50),
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: 'Your Message',
                    labelStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ),
                    focusedBorder:UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.cyan),
                    ), 
                  ),
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
             border: Border.all(
                    color: Colors.cyan,
                    width: 2,
                  ),
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
        )
        
      ]),
    );
  }
}
