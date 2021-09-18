import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                  Text('Chats',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.white),),
                  SizedBox(height: 20,),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Today',style: TextStyle(color: Colors.white),),
                        Text('19:30',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    title: Text('Erling Haaland',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('I am a Bot!!!!',style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://i.ytimg.com/vi/CuOvodbkPjA/hqdefault.jpg'),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Today',style: TextStyle(color: Colors.white),),
                        Text('11:51',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    title: Text('Kylian Mbappe',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('Tips please',style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhFRM_QdyIRr71RxoROuSrMGWqjpW8XxN0Bg&usqp=CAU'),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Yesterday',style: TextStyle(color: Colors.white),),
                        Text('1:12',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    title: Text('Lionel Messi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('Lets hangout together....',style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://www.mykhel.com/thumb/250x90x250/football/players/4/19054.jpg'),
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 0.0),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('1/1/2020',style: TextStyle(color: Colors.white),),
                        Text('9:01',style: TextStyle(color: Colors.white),),
                      ],
                    ),
                    title: Text('Maiti',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    subtitle: Text('Na bhai jabona lyadh lagche',style: TextStyle(color: Colors.white)),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: Icon(Icons.person,color: Colors.white,size: 50,),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Text('Add more friends',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
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
