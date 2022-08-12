import 'package:dietplan/resultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
class bmiCalcScreenn extends StatefulWidget {
  final String gender;
  bmiCalcScreenn({required this.gender,});
  @override
  State<bmiCalcScreenn> createState() => _bmiCalcScreennState();
}

class _bmiCalcScreennState extends State<bmiCalcScreenn> {

  int height = 180;
  int weight = 60;
  int age = 20;
  bool colour = false;
  String overwight = ' ';
  String normal = ' ';
  String underwight = ' ';
  String calculate = ' ';
  String gender = '';
  String Diet1='';
  String Diet2='';
  String Diet3='';
  String Diet4='';
  String Diet5='';
  String Diet6='';
  String img1='';
  String img2='';
  String img3='';
  String img4='';
  String img5='';
  String img6='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        elevation: 0.0,
        title: Text(
          "Diet Plan", style: TextStyle(fontSize: 43, color: Colors.white,fontStyle: FontStyle.italic),),
        centerTitle: true,
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
             Expanded(
               child: Column(
                  children: [

                    //SizedBox(width: 15, height: 5,),
                     Padding(
                       padding: const EdgeInsets.all(1.0),
                       child: Expanded(
                         child: Container(

                            width: double.infinity,

                            decoration: BoxDecoration(
                                color: Colors.pinkAccent[100],
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),

                            child: Column(

                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [

                                  Text("Height", style: TextStyle(color: Colors.black,
                                      fontSize: 35,
                                      fontWeight: FontWeight.w900),),
                                  SizedBox(height: 5,),

                                  Row(

                                    crossAxisAlignment: CrossAxisAlignment.baseline,

                                    mainAxisAlignment: MainAxisAlignment.center,

                                    textBaseline: TextBaseline.alphabetic,

                                    children: [

                                      Text(height.toString(), style: TextStyle(
                                          color: Colors.black, fontSize: 30),),

                                      Text("CM", style: TextStyle(color: Colors.black,
                                          fontSize: 25),),

                                    ],

                                  ),
                                  SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      inactiveTrackColor: Color(0xFF8D8E98),
                                      activeTrackColor: Colors.white60,
                                      thumbColor: Colors.white,
                                      overlayColor: Colors.black38,
                                      thumbShape:
                                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                                      overlayShape:
                                      RoundSliderOverlayShape(overlayRadius: 30.0),
                                    ),
                                    child: Slider(
                                      value: height.toDouble(),
                                      min: 120.0,
                                      max: 220.0,
                                      onChanged: (double newValue) {
                                        setState(() {
                                          height = newValue.round();
                                        });
                                      },
                                    ),
                                  ),

                                ]),


                          ),
                       ),
                     ),



                    SizedBox(height: 20,),
                     Expanded(
                       child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                             Expanded(
                               child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent[100],
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),


                                  child:
                                  Expanded(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [

                                          Text("Weight", style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900),),
                                          SizedBox(height: 5,),

                                          Text(weight.toString(), style: TextStyle(
                                              color: Colors.black, fontSize: 30),),
                                          SizedBox(height: 20,),

                                          Row(

                                            crossAxisAlignment: CrossAxisAlignment.baseline,

                                            mainAxisAlignment: MainAxisAlignment.center,

                                            textBaseline: TextBaseline.alphabetic,



                                            children: [

                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    weight--;
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.remove, color: Colors.pinkAccent,),

                                                ),
                                              ),

                                              SizedBox(width: 80,),

                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    weight++;
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.add, color: Colors.pinkAccent,),

                                                ),
                                              ),

                                            ],

                                          ),

                                        ],

                                      ),
                                  ),


                                ),
                             ),



                            SizedBox(height: 20,),
                            Expanded(
                              child: Container(

                                  decoration: BoxDecoration(
                                      color: Colors.pinkAccent[100],
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),

                                  child:
                                  Expanded(
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,

                                        children: [

                                          Text("Age", style: TextStyle(color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w900),),
                                          SizedBox(height: 5,),

                                          Text(age.toString(), style: TextStyle(
                                              color: Colors.black, fontSize: 30),),
                                          SizedBox(height: 20,),

                                          Row(

                                            crossAxisAlignment: CrossAxisAlignment.baseline,

                                            mainAxisAlignment: MainAxisAlignment.center,

                                            textBaseline: TextBaseline.alphabetic,


                                            children: [

                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    age--;
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,

                                                  child: Icon(
                                                    Icons.remove, color: Colors.pinkAccent,),

                                                ),
                                              ),

                                              SizedBox(width: 80,),
                                              InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    age++;
                                                  });
                                                },
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.white,

                                                  child: Icon(
                                                    Icons.add, color: Colors.pinkAccent,),

                                                ),
                                              ),

                                            ],

                                          ),

                                        ],

                                      ),
                                  ),


                                ),
                            ),



                          ],
                        ),
                     ),


                  ],
                ),
             ),

            SizedBox(height: 30,),



            InkWell(
              onTap: () {
                setState(() {
                  double _bmi = weight / pow(height / 100, 2);
                  if (_bmi >= 25) {
                    calculate = " You are overweight";
                    Diet1='1. Eat all the nutrients that the body needs';
                    Diet2='2. Eat at regular times during the day';
                    Diet3='3. use a smalller plate';
                    Diet4='4. Do more sports';
                    Diet5='5. Drink plenty of water';
                    Diet6='6. Read food labels and try to choose healthier option and calculate your calories';
                    img1='https://th.bing.com/th/id/R.50599d900de4c9bd69365d0ab90fcf7c?rik=IVhzCQW%2bcSKzNA&riu=http%3a%2f%2fprod.static9.net.au%2f_%2fmedia%2f2019%2f01%2f15%2f14%2f42%2fhealthy_eating.jpg&ehk=QalAx5IuNWfYwvQ%2fGU9tCefRqIjXn0CUrmpv29BTddo%3d&risl=&pid=ImgRaw&r=0';
                    img2='https://www.inlifehealthcare.com/wp-content/uploads/2017/11/regulareatin.jpg';
                    img3='https://s-media-cache-ak0.pinimg.com/736x/fc/23/53/fc2353366f138618884bea37c75193f6.jpg';
                    img4='https://th.bing.com/th/id/R.274085b5a747e2c8ed4a8bd2cf1dfe68?rik=W0SVcTfNFg93Kg&riu=http%3a%2f%2fd3e1m60ptf1oym.cloudfront.net%2fc7dc4aec-6439-4f4a-8c77-72db6aac29d5%2fPC.NCAAWBB.IowaVAmerican.032015.JustinTornerPhoto-16_xgaplus.jpg&ehk=qxsIb8oqRimGP%2b46nMr0tqYYG%2fxEjPNKClMqpcNfku0%3d&risl=&pid=ImgRaw&r=0';
                    img5='https://th.bing.com/th/id/R.bb8d6b1b675484940ca58138c727b7b5?rik=NTb30snDK3CHuw&pid=ImgRaw&r=0';
                    img6='https://th.bing.com/th/id/OIP.mTplH0COQAeGKXGaUSvDLgHaKX?pid=ImgDet&rs=1';
                  } else if (_bmi > 18.5) {
                    calculate = "You are Normal";
                    Diet1='1. Eat all the nutrients that the normal body needs';
                    Diet2='2. plan your meals';
                    Diet3='3. Exersice can help you keep your body healthy';
                    Diet4='4. Drink plenty of water';
                    Diet5='5. Eat fruits and vegitables';
                    Diet6='6. Organize your meals during the day';
                    img1='https://media3.s-nbcnews.com/j/newscms/2018_44/1381977/vegan-today-181031-main-02_8a3ec7bff8fce025ac653223a280e4cf.focal-758x379.jpg';
                    img2='https://th.bing.com/th/id/OIP.fQdgRRfnPplO4Q9Z8wCmEAHaHa?pid=ImgDet&w=1024&h=1024&rs=1';
                    img3='https://th.bing.com/th/id/R.b12565e1550f748196d0e1d85818e774?rik=iz33fhJbHEvbWg&pid=ImgRaw&r=0';
                    img4='https://i.pinimg.com/originals/60/c6/6d/60c66d61778b63c3084f4a79decb6f25.jpg';
                    img5='https://th.bing.com/th/id/OIP.AEdtQU94xoHbtTKitoYqcwHaE7?pid=ImgDet&rs=1';
                    img6='https://th.bing.com/th/id/R.fb3142332920134009fad8e3c492bc9d?rik=CN%2fNJF4UxzyJUQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-zBEjOrejKUs%2fUglRClgRnYI%2fAAAAAAAAEz0%2fLf_rIf0h5Ac%2fs1600%2fdaily_tasks.jpg&ehk=XRXp5INSoNWyR8eoT3Af2A2FfFxv%2fGcng%2bxQZHfAI88%3d&risl=&pid=ImgRaw&r=0';

                  } else {
                    calculate = " You are underweight";
                    Diet1='1. Eat all the nutrients that the body needs';
                    Diet2='2. Eat more frequently';
                    Diet3='3. choose nutrient rich food';
                    Diet4='4. Organize your meals during the day';
                    Diet5='5. Have snacks bettween meals';
                    Diet6='6. Excersices can help you gain weight by building up your muscles';
                    img1='https://th.bing.com/th/id/OIP.2qBFlZmMheWixKUVnNf3ngHaE7?pid=ImgDet&w=2560&h=1702&rs=1';
                    img2='https://thumbs.dreamstime.com/z/food-clock-fresh-fruits-vegetables-healthy-food-food-clock-fresh-fruits-vegetables-healthy-food-food-concept-134057033.jpg';
                    img3='https://familydoctor.org/wp-content/uploads/2010/05/shutterstock_300553067.jpg';
                    img4='https://th.bing.com/th/id/R.fb3142332920134009fad8e3c492bc9d?rik=CN%2fNJF4UxzyJUQ&riu=http%3a%2f%2f1.bp.blogspot.com%2f-zBEjOrejKUs%2fUglRClgRnYI%2fAAAAAAAAEz0%2fLf_rIf0h5Ac%2fs1600%2fdaily_tasks.jpg&ehk=XRXp5INSoNWyR8eoT3Af2A2FfFxv%2fGcng%2bxQZHfAI88%3d&risl=&pid=ImgRaw&r=0';
                    img5='https://3.bp.blogspot.com/-xciuK-Qpyf8/WDs838qP9qI/AAAAAAAAKL8/ExmJL1n_wfkiKja8AnIvxsE6sIAdynhHQCEw/s1600/smoothie-recipes.jpg';
                    img6='https://th.bing.com/th/id/R.b12565e1550f748196d0e1d85818e774?rik=iz33fhJbHEvbWg&pid=ImgRaw&r=0';

                  }
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>
                        resultScreen(height: 180,
                          weight: 60,
                          age: 20,
                          calculate: calculate,Diet1:Diet1,Diet2:Diet2,Diet3:Diet3,Diet4:Diet4,Diet5:Diet5,Diet6:Diet6,img1: img1,img2: img2,img3: img3,img4: img4,img5: img5,img6: img6,)),
                  );
                });
              },
              child:
              Expanded(
                child: Container(


                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Center(child:
                    Column(
                      children: [
                        Text("Calculate",
                          style: TextStyle(color: Colors.white, fontSize: 45),),
                      ],
                    ),

                    ),
                  ),
              ),

            ),

          ],

        ),
      ),

    );
  }
}