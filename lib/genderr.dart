import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmiCalcScreen.dart';
import 'bmiCalcScreenn.dart';


class genderr extends StatefulWidget {


  @override
  State<genderr> createState() => _genderrState();
}

class _genderrState extends State<genderr> {
  String gender = '';
  bool colour = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        elevation: 0.0,
        title: Text(
          "Diet Plan", style: TextStyle(fontSize: 50, color: Colors.white,fontStyle: FontStyle.italic),),
        centerTitle: true,
      ),

      body:Column(children: [
        Row(children: [
          Column(
            children: [
              Container()
            ],
          )
        ],),
        SizedBox(height: 100,),
        Row(children: [
          Expanded(
            child: Center(
              child: Column(

                children: [
                  InkWell(
                    onTap: (){

                      setState(() {


                        gender="male";

                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>bmiCalcScreen(gender:"male")),
                        );
                      });
                    },

                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.grey[200],
                            color:(gender=="male")? Colors.blueAccent:Colors.white54,

                            borderRadius: BorderRadius.all(Radius.circular(20))

                        ),

                        // child: Padding(
                        // padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                        child: Expanded(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [

                              Image.asset("assets/images/malee.png",

                                height: 110,width: 130,
                               // color: Colors.black,

                              ),
                              // SizedBox(height: 5,),



                              Text("Male",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w900),),

                            ],

                          ),
                        ),
                        // ),



                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  InkWell(
                    onTap: (){
                      setState(() {


                        gender="female";
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>bmiCalcScreenn(gender:"female")),
                        );


                      });
                    },
                    child: Center(
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.grey[200],
                            color:(gender=="female")? Colors.pinkAccent:Colors.white54,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),

                        // child: Padding(
                        // padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5),
                        child: Expanded(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,


                            children: [



                              Image.asset("assets/images/female.png",

                                height: 110,width: 130,
                                color: Colors.black,
                              ),
                              // SizedBox(height: 5,),



                              Text("Female",style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w900),),



                            ],

                          ),
                        ),
                        // ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          // ),


        ],
        ),
      ],),

    );


      
     


  }
}