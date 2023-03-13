import 'package:dashboard_ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.6,
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(50))

                ),
                // child: Text('scsc')//Image.asset('assets/images/img1.png'),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.6666,
              decoration: const BoxDecoration(
                color: Color(0xFF674AEF)
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.666,
              padding: const EdgeInsets.only(top: 40,bottom: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
              ),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('Sample text',
                    style:TextStyle(
                      fontSize: 25,
                      fontWeight:FontWeight.w500,
                      color: Colors.black,
                      letterSpacing: 1,
                      wordSpacing: 2
                    ),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 30),
                    child: Text('sample text on learning,this is a dummy text ignore it',textAlign: TextAlign.center,style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.6))),
                  ),
                  SizedBox(height: 60,),
                  Material(
                    color: Color(0xFF674AEF),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen()));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 60),
                        child: Text('Get Started',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold,letterSpacing: 1),),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),

        ],
      ),
    ));
  }
}