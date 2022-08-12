import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {
 // const resultScreen({Key? Key}) :super(key: Key);
 final int height;
  final int weight;
  final int age;
  final bool colour=false;
  String overwight=' ';
  String normal=' ';
  String underwight=' ';
  final  String calculate;
  final String gender='';
 final  String Diet1;
 final  String Diet2;
 final  String Diet3;
 final  String Diet4;
 final  String Diet5;
 final  String Diet6;
 final String img1;
 final String img2;
 final String img3;
 final String img4;
 final String img5;
 final String img6;

 resultScreen({required this.height,required this.weight,required this.age,required this.calculate,required this.Diet1, required this.Diet2,required this.Diet3,required this.Diet4,required this.Diet5,required this.Diet6,required this.img1,required this.img2,required this.img3,required this.img4,required this.img5,required this.img6,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[200],
        elevation: 0.0,
        title: Text(
          " $calculate", style: TextStyle(fontSize: 26, color: Colors.white,fontStyle: FontStyle.italic),),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet1,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(img1
                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet2,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(img2
                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet3,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(
                    img3                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet4,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(
                    img4                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet5,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(
                    img5                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),

              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text( Diet6,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic,color: Colors.black),),
              ),
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.greenAccent[100],),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(image: NetworkImage(
                    img6                )),
              ),

            ),
          ),
          SizedBox(height: 5,),
        ],
      ),
    );
    /*Container(

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.white),
      height: 280,
      width: 400,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(
                decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.blue[200]),
                width: 400,
                height: 200,
                child: Container(
                  decoration: BoxDecoration(color: Colors.blue[200]),
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                    child: Text(
                      Diet,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.black),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " ",
                  style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/
     /* Container(
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      height: 160,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 0.7],
          colors: [
            Colors.greenAccent,
            Colors.green,
          ],
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text( calculate, style:Theme.of(context).textTheme.headline4,),


              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white60,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Icon( Icons.notifications,color: Colors.white,),
                ),
              ),

            ],
          ),
          const SizedBox(
            height: 5,
          ),
      Container(
        width: double.infinity,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.all(Radius.circular(0))
        ),
        child: Expanded(

          child: Column(
            children: [
              SizedBox(height: 10,),
              SizedBox(height: 15,),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child:

                Text( Diet, style: Theme.of(context).textTheme.titleLarge,),

              ),],
          ),
        ),
      ),

        ],
      ),
    );*/
    /*  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[400],
        title: const Text("Your Result is",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
                fontStyle: FontStyle.italic
            )),
      ),
      body:
        Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple[50],
                      borderRadius: BorderRadius.all(Radius.circular(0))
                  ),
                  child: Expanded(

                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text( calculate, style: TextStyle(color: Colors.grey[850],fontSize: 35,fontStyle: FontStyle.italic,fontWeight: FontWeight.w900),),
                        SizedBox(height: 15,),

                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child:

                          Text( Diet, style: TextStyle(color: Colors.grey[800],fontSize: 25,fontStyle:FontStyle.italic,fontWeight: FontWeight.w400 ),),

                        ),],
                    ),
                  ),
                ),
              ),

            ]),


    );*/
  }
}