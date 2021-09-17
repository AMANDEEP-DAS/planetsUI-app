import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:planets_app/screens/home_screen.dart';
import 'dart:math' as math;

class CatScreen extends StatefulWidget {
  const CatScreen({Key? key}) : super(key: key);

  @override
  _CatScreenState createState() => _CatScreenState();
}

class _CatScreenState extends State<CatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 15,right: 15),
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: ScrollConfiguration(
            behavior: MyBehavior(),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Search',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.white),),
                    Text('for categories',style: TextStyle(fontSize: 30,color: Colors.white)),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: ListTile(
                        leading: Icon(Icons.search,color: Colors.white,),
                        title: TextField(
                          cursorColor: Colors.white,
                          style: TextStyle(
                              color: Colors.white
                          ),
                          decoration: InputDecoration(
                              hintText: 'Search...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 18,
                              ),
                              border: InputBorder.none
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.6,
                      child: GridView.count(
                        crossAxisCount: 2,
                        children: List.generate(20, (index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
