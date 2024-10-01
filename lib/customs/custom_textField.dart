import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
         CustomTextField({required this.labelText,required this.iconP,required this.iconS});
  late String labelText;
  late IconData iconP;
  late IconData iconS;
  //bool _obscure ;
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefix: Icon(iconP),
        suffix: Icon(iconS),
        labelText: labelText, suffixStyle:
      TextStyle(color:  Color(0xFF3E2723),),


        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(width: 1, color: Color(0xFF3E2723)),
        ),

      ),


      // onFieldSubmitted: (value){
      //   print(value);
      // },
      // onChanged: (value){
      //   print(value);
      // },

    );
  }

}
