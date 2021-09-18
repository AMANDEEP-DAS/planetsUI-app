import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
