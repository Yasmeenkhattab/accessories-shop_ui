import 'package:accessories_shop/customs/custom_button.dart';

import 'package:accessories_shop/screens/loginScreen.dart';
import 'package:flutter/material.dart';

import 'navigationScreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passwordVisible = false;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    //passwordVisible=true;
  }

  Widget build(BuildContext context) {
    return Material(
        color: Colors.orange[100],
      child:  SingleChildScrollView(
        child: SafeArea(
        child: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      //   SizedBox(
      //   height: 3,
      // ),
          Container(
            decoration:  new BoxDecoration(
              color:  Color(0xFF1EBF2),
            ),
            child: Image.asset(
              'images/sign.png',
            ),
          ),
     //  Image.asset('images/freed.png',color: Color(0xFF1EBF2),),
      SizedBox(
        height: 2,
      ),


      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: " User Name",

                 border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1,color:Color(0xFFa27553)),
      ),

            ),
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 15,
            ),

            TextField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: "Phone ",

                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1,color: Color(0xFFa27553)),
                ),

              ),
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    borderSide: BorderSide(width: 1,color: Color(0xFFa27553)),
                  ),

                  prefix: Icon(Icons.email),
                  labelText: 'Email',
                  hintText: 'name@gmail.com',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 10)),
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1,color: Color(0xFFa27553)),
                ),


                prefix: Icon(Icons.lock_outline),
                labelText: 'Password',
                hintText: 'abc123',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off)),
                // alignLabelWithHint: false,
                //filled: true,
              ),
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide: BorderSide(width: 1,color:Color(0xFFa27553)),
                ),

                labelText: " Confirm Password",

                prefix: Icon(Icons.lock_outline),

                hintText: 'abc123',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 10),
                //border: OutlineInputBorder()
              ),
              textInputAction: TextInputAction.done,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return NavigationScreen ();
                  },
                ));
              },
              child: Text(
                'Create Account',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(55),
                backgroundColor: Color(0xFFa27553),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
              ),
            ),

            SizedBox(
              height: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Text('Already Have An Account ?',style: TextStyle(color: Colors.black,fontSize: 16),),
                // SizedBox(
                //   width:2,
                // ),
                TextButton(
                    onPressed: (){
    Navigator.push(context,

    MaterialPageRoute(builder: (context) {
    return Loginscreen();
    },


    )

    );
    },

                    child: Text('Log in',style: TextStyle(color: Color(0xFFa27553),fontSize: 16,fontWeight: FontWeight.bold),)),


              ],
            )
          ],
        ),
      ),
      ]
      )
    )
    )
      )
    );
  }
}
