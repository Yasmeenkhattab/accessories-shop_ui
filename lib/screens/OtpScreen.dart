import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OtpCodeScreen.dart';

class Otpscreen extends StatelessWidget {
  const Otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 55,
            ),
        Text(' Forget Password',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)),
             SizedBox(
               height: 20,
             ),
            Text('Please Enter Your Number.You Recieved a OTP to create new password via number',style: TextStyle(fontSize: 15),),

            SizedBox(
              height: 30,
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //prefix: Icon(Icons.email),
               // suffixIcon: Icon(CupertinoIcons.multiply, color: Color(0xEEFE6969),),
                labelText: "Enter Number",

                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  borderSide:
                  BorderSide(width: 1, color:Color(0xFFa27553)),
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return OTPScreenCode();
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


          ],
        ),
      ),
    );
  }
}
