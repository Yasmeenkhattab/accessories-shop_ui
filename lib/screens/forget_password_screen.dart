import 'package:accessories_shop/customs/custom_button.dart';
import 'package:accessories_shop/customs/custom_textField.dart';
import 'package:accessories_shop/screens/OtpScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'recoveryScreen.dart';

class ForgetPasswordScreen extends StatefulWidget {
  ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
           appBar: AppBar(
             backgroundColor: Colors.orange[100],
           ),
    body:  Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: SingleChildScrollView(
          child: Center(
            child: Column(

             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70,
                ),
                Text(' Forget Password',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Please Enter Your Email Address . You Recieved a link to create or set new password via email',style: TextStyle(fontSize: 16,color: Colors.black),),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  // controller: emailController,
                  // onChanged: (val){
                  //   if(val != ""){
                  //     setState(() {
                  //       emailController.text= "";
                  //     });
                  //   }
                  // },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    //prefix: Icon(Icons.email),
                    suffixIcon: Icon(CupertinoIcons.multiply, color: Color(0xFFa27553),),
                    labelText: "Email",

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide:
                      BorderSide(width: 1, color: Color(0xFFa27553)),
                    ),
                  ),
                ),

                SizedBox(
                  height: 50,
                ),

            ElevatedButton(
              onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Recoveryscreen();
                    },
                  ));
              },


              child: Text(
                'Send Code',
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
                  height: 38,
                ),
                Align(
                    alignment: Alignment.center,
                    child
                    : Text('OR',style: TextStyle(fontSize: 20,color: Colors.black),)),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                      onPressed: (){

                        Navigator.push(context,

                            MaterialPageRoute(builder: (context) {
                              return Otpscreen();
                            },


                            )

                        );
                      },

                      child: Text('Verify Using Number',style: TextStyle(color:Color(0xFFa27553),fontSize: 16,fontWeight: FontWeight.bold),)),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
