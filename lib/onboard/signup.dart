import 'package:car_wash/onboard/reusablewidget.dart';
import 'package:car_wash/onboard/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'authentication.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _userNameTextController = TextEditingController();
  
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
        image: AssetImage("asset/carbg.jpg"),
      fit: BoxFit.fill,
      colorFilter: ColorFilter.mode(Colors.black26,BlendMode.darken)
      )
    ),
      ),
    ),
    Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: (() {
            Navigator.pop(context);
          }), icon: Icon(Icons.arrow_back,
          color: Colors.black,
          size: 35,)),
        title: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 25, 
            fontWeight: FontWeight.bold,
            color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.3, 20, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter UserName", Icons.person_outline, false,
                _userNameTextController,
                validator: ((value) {
                            if (value!.isEmpty){
                            return "please enter the name";
                            }
                            return null;
                            })),
            const SizedBox(
              height: 20,
            ),
            reusableTextField("Enter Email Id", Icons.person_outline, false,
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
            reusableTextField("Enter Password", Icons.lock_outlined, true,
                _passwordTextController,
                validator: ((value) {
                            if (value!.isEmpty){
                            return "please enter the password";
                            }
                            return null;
                            })),
            const SizedBox(
              height: 25,
            ),
            MaterialButton(color: Colors.blue,
                   child: Text("Register",
                    style: TextStyle(
                      fontSize: 20
                    ),),
                   onPressed: () async {
                  await AuthenticationService(FirebaseAuth.instance)
                  .firebaseregister(_emailTextController.text.trim(),_passwordTextController.text.trim())
                  .then((value) {
                    if (value == "Signed up"){
                      Navigator.push(
                      context, 
                  MaterialPageRoute(builder: (context) => SignIn(),));
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content:Text("enter the correct value"),
                        backgroundColor: Colors.red, ));
                    }});
                   }),
          ],),
      )),
      )]);
  }
}