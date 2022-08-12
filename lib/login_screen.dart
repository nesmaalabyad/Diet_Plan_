import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Sign_up_screen.dart';
import 'genderr.dart';

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  //const login({Key? key}) : super(key: key);
  int currentindex = 0;
  var scaffoldkey = GlobalKey<ScaffoldState>();
  var formkey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Center(
                  child:   Image.asset("assets/images/Myicon.png",height: 200,width: 200,),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.greenAccent[100],
                            fontSize: 35,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter a valid text";
                  }
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  prefix: Icon(
                    Icons.email,
                    color: Colors.greenAccent[100],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: passwordController,
                obscureText: obscureText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter a valid text";
                  }
                },
                decoration: InputDecoration(
                  labelText: "password",
                  prefix: Icon(
                    Icons.lock,
                    color: Colors.greenAccent[100],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(width: 1, color: Colors.greenAccent),
                  ),
                  suffixIcon: InkWell(
                      onTap: (){
                        setState(() {
                          obscureText=!obscureText;
                        });
                      },
                      child: obscureText
                          ? Icon(
                        Icons.visibility_off,
                        color: Colors.grey,
                      )
                          : Icon(
                        Icons.visibility,
                        color: Colors.grey,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            InkWell(
              onTap: () {

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context)=>genderr()),
                );

              },
              child: Center(
                child: Column(
                  children: [
                    Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100],
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => signUp()),
                          );
                        });
                      },
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue,fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
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
