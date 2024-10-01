import 'package:accessories_shop/customs/custom_button.dart';
import 'package:flutter/material.dart';

import 'SignupScreen.dart';
import 'forget_password_screen.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
          color: Colors.orange[100],
            child: Column(
               //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
          SizedBox(
            height: 40,
          ),
    //         Container(
    //         decoration: BoxDecoration(
    //         color: new Color(0xFF1EBF2),
    //       image: new DecorationImage(
    //         image: ExactAssetImage('images/freed.png'),
    //         //fit: BoxFit.cover,
    //       ),
    //
    // ),
    //         ),
          Image.asset(
            'images/login.png',
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: Column(children: [
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.email),
                    labelText: "Enter Email",
                    suffixStyle: TextStyle(
                      color: Color(0xFFa27553),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color:  Color(0xFFa27553)
                          ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefix: Icon(Icons.lock),
                    suffix: Icon(Icons.remove_red_eye_rounded),
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFFa27553)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignupScreen();
                      },
                    ));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(55),
                    backgroundColor:  Color(0xFFa27553),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
                //
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return ForgetPasswordScreen();
                        },
                      ));
                    },
                    child: Text(
                      'Forget Password ?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFa27553)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 2,
                ),




                Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 15, color: Colors.black87),
                    ),
                    SizedBox(
                      width: 2,
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignupScreen();
                          },
                        ));
                      },
                      child: Text(
                        'Sign Up ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFa27553)),
                      ),
                    ),
                  ],
                ),
              ])),
        ])));
  }
}
