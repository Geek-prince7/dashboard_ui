// import 'dart:html';

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  int blue=0xFF674AEF;
  List catName=['Category','Classes','Courses','Book Store','Leader board','Live classes'];
  List<Color> catColor=[
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
    Color(0xFFFC7C7F),
  ];

  List<Icon> catIcon=[
    Icon(Icons.category,color: Colors.white,size: 30,),
    Icon(Icons.video_library,color: Colors.white,size: 30,),
    Icon(Icons.assignment,color: Colors.white,size: 30,),
    Icon(Icons.store,color: Colors.white,size: 30,),
    Icon(Icons.play_circle_fill,color: Colors.white,size: 30,),
    Icon(Icons.emoji_events,color: Colors.white,size: 30,),

  ];
  List imgList=['Flutter','C#','Python','React Native'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          padding: EdgeInsets.only(top: 15,left: 15,right: 15,bottom: 10),
          decoration: BoxDecoration(
            color: Color(blue),
            borderRadius: BorderRadius.only(
                bottomRight:Radius.circular(20),
              bottomLeft: Radius.circular(20)
            ),

            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.dashboard,size: 30,color: Colors.white,),
                  Icon(Icons.notifications,size: 30,color: Colors.white,)
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                  padding:EdgeInsets.only(left: 3,bottom: 15),
                child: Text('hi, coder',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 1,wordSpacing: 2,color: Colors.white),),
              ),
              Container(
                margin: EdgeInsets.only(top: 5,bottom: 20),
                width: MediaQuery.of(context).size.width,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'search here...',
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.5)
                    ),
                    prefixIcon: Icon(Icons.search,size: 25,),


                  ),
                ),
              )
            ],
          ),

        ),
        Padding(
            padding:EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Column(
            children: [
              GridView.builder(
                itemCount: catName.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,

                  ),
                itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColor[index],
                            shape: BoxShape.circle,

                          ),
                          child: Center(
                            child: catIcon[index],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(catName[index],style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.7)),)
                      ],

                    );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Courses',
                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),
                  ),
                  Text('See All',
                    style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Color(blue)),
                  ),
                ],

              ),
              SizedBox(height: 10,),
              GridView.builder(
                  shrinkWrap: true,
                  itemCount:imgList.length ,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:(MediaQuery.of(context).size.height-50-25)/(4*240),
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),

                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF5F3FF)
                        ),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.all(10),
                              child: Image.asset(
                                'images/${imgList[index]}.png',
                                width: 80,
                                height: 80,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              imgList[index],
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6)
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              '55 videos',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black.withOpacity(0.5)
                              ),
                            )
                          ],
                        ),
                      ),
                    );

                  },
              )
            ],
          ),
        )

      ],),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(blue),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.assignment),label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),


        ],
      ),
    );
  }
}