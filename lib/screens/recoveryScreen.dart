import 'package:accessories_shop/customs/custom_textField.dart';
import 'package:flutter/material.dart';

import '../customs/custom_button.dart';

class Recoveryscreen extends StatelessWidget {
  const Recoveryscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
      ),
           body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(' Forget Password',style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold)
            ),
            SizedBox(
              height: 30,
            ),

        TextFormField(

          keyboardType: TextInputType.number,
          decoration: InputDecoration(

            labelText: "# Reset Code",
            suffixStyle: TextStyle(
              color: Color(0xFFa27553),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              borderSide:
              BorderSide(width: 1, color:  Color(0xFFa27553)),
            ),
          ),
        ),
            SizedBox(
              height: 15,
            ),
            CustomTextField(labelText: 'New Password', iconP: Icons.lock,iconS: Icons.visibility,),
            SizedBox(
              height: 15,
            ),
            CustomTextField(labelText: 'Confirm Password', iconP: Icons.lock,iconS: Icons.visibility),
            SizedBox(
              height: 70,
            ),
            CustomButton(buttonName: 'Send Code', onPressed: (){  Navigator.push(context, MaterialPageRoute(

              builder: (context) {
                return Recoveryscreen();
              },
            ));
            }),
        ]
        ),
      )
           )
    );
  }
}
