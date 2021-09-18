import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _switchValue1 = true;
  bool _switchValue2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 15,right: 15),
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Account',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.white),),
                  SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('http://3.bp.blogspot.com/_QgE0riHYGGE/TOl3t-zcWcI/AAAAAAAAAAY/0X0XQpuojBs/s1600/profile_cristiano_ronaldo.jpg'),
                    ),
                    title: Text('CR7',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    subtitle: Text('View Profile',style: TextStyle(color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    title: Text('Dark Mode',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    subtitle: Text('To reduces battery usage',style: TextStyle(color: Colors.white)),
                    trailing: CupertinoSwitch(
                      activeColor: Colors.deepOrangeAccent,
                      value: _switchValue1,
                      onChanged: (value) {
                        setState(() {
                          _switchValue1 = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    title: Text('Data Saver Mode',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    subtitle: Text('To reduces data usage and additional charges',style: TextStyle(color: Colors.white)),
                    trailing: CupertinoSwitch(
                      activeColor: Colors.deepOrangeAccent,
                      value: _switchValue2,
                      onChanged: (value) {
                        setState(() {
                          _switchValue2 = value;
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
