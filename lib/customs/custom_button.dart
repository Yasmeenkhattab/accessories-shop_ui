import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.buttonName, required this.onPressed});
 String buttonName;
 final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {},
      //   Navigator.push(context, MaterialPageRoute(
      //     builder: (context) {
      //       return Homescreen();
      //     },
      //   ));
      //  },
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),

      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(55),
        backgroundColor: Color(0xFFa27553),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0)),
      ),
    );
  }
}
