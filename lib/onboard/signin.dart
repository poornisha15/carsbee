import 'package:car_wash/onboard/reusablewidget.dart';
import 'package:car_wash/onboard/signup.dart';
import 'package:car_wash/pages/bottomnavigation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../pages/homescreen.dart';
import 'authentication.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     return Stack(
      children:[
        ShaderMask(
      shaderCallback: (bounds) => 
      LinearGradient(
    colors: [Colors.black12,Colors.black12],
    begin: Alignment.center,
    end: Alignment.center).createShader(bounds),
    blendMode: BlendMode.darken,
      child: Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage("asset/carbg1.jpg"),
      fit: BoxFit.contain,
      colorFilter: ColorFilter.mode(Colors.black26,BlendMode.darken)
      )
    ),
      ),
    ),
     Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
         Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.38, 20, 0),
          child: Column(
            children: [
          SizedBox(
                height: 30,
              ),
              reusableTextField("Enter Useremail", 
              Icons.person_outline, false,
                  _emailTextController,
                  validator: ((value) {
                              if (value!.isEmpty){
                              return "please enter the email";
                              }
                              return null;
                              })),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController,
                  validator: ((value) {
                              if (value!.isEmpty){
                              return "please enter the password";
                              }
                              return null;
                              })
                              ),
              const SizedBox(
                height: 25,
              ),
                         ElevatedButton(
                            onPressed: () async {
                              await AuthenticationService(FirebaseAuth.instance)
                              .firebaseLogin(_emailTextController.text.trim(), _passwordTextController.text.trim())
                              .then((value) {
                                if (value == "Signed in"){
                                  Navigator.push(
                                    context, 
                                    MaterialPageRoute(
                                      builder: (context) => BottomNavigation(),));
                                    }
                                    else{
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content:Text("enter the correct value"),
                                        backgroundColor: Colors.red, ));
                                        }}); 
                                        }, child: Text("Sign In",style: TextStyle(fontSize: 20,color: Colors.black),),),
                                        SizedBox(height: 25,),
                                        signUpOption()
            ]),
      ),
      ])))]);
  }
  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have account?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,fontWeight: FontWeight.bold)),
            SizedBox(width: 10,),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
  
