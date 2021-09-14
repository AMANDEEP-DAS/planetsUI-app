import 'package:flutter/material.dart';
import 'package:planets_app/screens/home_screen.dart';

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
                padding: EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height/2.1,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('EXPLORE',style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text('Your own Planet',style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text('Rule the Universe',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 30,left: 30),
                  height: MediaQuery.of(context).size.height/7,
                  width: MediaQuery.of(context).size.width/2,
                  decoration: BoxDecoration(
                    color: Color(0xff1fd1a5),
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade800.withOpacity(0.5),
                        spreadRadius: 10,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Skip',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/1.4,
                decoration: BoxDecoration(
                  color:  Color(0xff11018a),
                  borderRadius: BorderRadius.only(topRight:Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade800.withOpacity(0.5),
                      spreadRadius: 10,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign Up',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.all(30),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sign In',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)
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
