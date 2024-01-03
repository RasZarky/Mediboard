import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../../widgets/customTextField.dart';
import '../home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {

  final _emailTextEditingController = TextEditingController();
  final _passwordTextEditingController = TextEditingController();
  late String email;
  late String password;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

            const SizedBox(height: 60),

            Image.asset(
              "assets/Logo.png",
              width: 150,
            ),

            const Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: EdgeInsets.fromLTRB(15.0,0,0,0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(15.0,0,0,0),
                  child: Text(
                    "Access your medical history",
                  ),
                ),

              ],
            ),

            const SizedBox(height: 50,),

             Form(child: Column(
              children: [

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15.0,0,0,15),
                      child: Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),

                CustomTextField(
                  controller: _emailTextEditingController,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Email",
                  labelText: "Enter your email address",
                  isObsecure: false,
                ),

                const SizedBox(height: 15,),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(15.0,0,0,15.0),
                      child: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),

                CustomTextField(
                  controller: _passwordTextEditingController,
                  textInputType: TextInputType.visiblePassword,
                  data: Icons.lock,
                  hintText: "Password",
                  labelText: "At least 8 characters",
                  isObsecure: false,
                ),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0,5,15.0,0),
                      child: Text("Forgot password?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.purpleAccent,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30,),

                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 16),

                  child: ElevatedButton(

                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                      backgroundColor: Colors.purple,
                    ),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: const Color(0X7AFFFFFF).withOpacity(1),
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                      ),
                    ),

                    onPressed: () {

                      Navigator.pushReplacement(context,
                          PageTransition(type: PageTransitionType.leftToRight, duration: const Duration(seconds: 2), child: const Home())
                      );
                    }
                  ),
                ),

              ],
            ))

          ],
        ),

      ),
    );
  }
}
