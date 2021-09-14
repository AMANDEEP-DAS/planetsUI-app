import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15,top: 15),
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Search',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 30,color: Colors.white),),
              Text('for planets',style: TextStyle(fontSize: 30,color: Colors.white)),
              SizedBox(height: 20,),
              Container(
                // color: Colors.blue,
                child: Stack(
                  children: [
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.deepOrangeAccent,
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),
                        ),
                        child: Icon(Icons.filter_list,color: Colors.white,size: 30,),
                      ),
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
