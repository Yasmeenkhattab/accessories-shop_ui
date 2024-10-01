import 'package:accessories_shop/screens/recoveryScreen.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:sms_autofill/sms_autofill.dart';


class OTPScreenCode extends StatefulWidget {
  @override
  _OTPScreenCodeState createState() => _OTPScreenCodeState();
}

class _OTPScreenCodeState extends State<OTPScreenCode> {

 // final TextEditingController _otpController = TextEditingController();
 // String _otp = "";

  @override
  // void initState() {
  //   super.initState();
  //   SmsAutoFill().listenForCode;
  // }

  // void _verifyOtp() {
  //   // Implement your verification logic here
  //   print("Entered OTP: $_otp");
  // }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        //Colors.white,
        //Color(0xFFEF6969),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color:  Color(0xFF3E2723)),
        //Colors.transparent),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.orange[100],

      appBar: AppBar(
        backgroundColor: Colors.orange[100],
      ),


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height:50,
              ),
              Text('Enter OTP',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please Enter OTP Code. Please Check your number and enter here OTP to verify',
               style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 60),
              Center(
                child: Pinput(
                  length: 5,
                  defaultPinTheme: defaultPinTheme,
                  focusedPinTheme: defaultPinTheme.copyWith(
                    decoration: defaultPinTheme.decoration!.copyWith(
                      border: Border.all(color: Color(0xFFa27553)),
                    ),
                  ),
                  onCompleted: (pin) => debugPrint(pin),
                ),
              ),
          
          
              // ),
              SizedBox(height: 70),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Recoveryscreen();
                    },
                  ));
                },
          
          
                child: Text(
                  'Verify',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
          
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor:Color(0xFFa27553),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}