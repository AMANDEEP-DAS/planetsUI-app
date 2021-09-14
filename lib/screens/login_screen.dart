import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://i.pinimg.com/originals/2c/c7/84/2cc784186a00d725720c4da63d97ed90.gif'),
              fit: BoxFit.cover
          )
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(
                  color:  Color(0xff11018a),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(50)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                height: MediaQuery.of(context).size.height/9,
                width: MediaQuery.of(context).size.width/1.5,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
