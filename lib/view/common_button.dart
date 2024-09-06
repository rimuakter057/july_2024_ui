import 'package:flutter/material.dart';
import 'package:july_2024/view/Screens/common_text.dart';

class RoundedButton extends StatelessWidget {
  final String ? buttonName;
  final Color? backgroundColor;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback ? callback;
  final OutlinedBorder ? shape;

  const RoundedButton({super.key,required this.buttonName, this.backgroundColor,
    this.textStyle, this.callback, this.icon, this.shape, });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
         callback !();

    },

    style: ElevatedButton.styleFrom(
     backgroundColor: backgroundColor,
      shape: shape??RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      )
    ),
        child:icon != null? Row(children: [
          icon!,CommonText(text:buttonName,color: Colors.white,fontSize: 20,)
        ],):CommonText(text:buttonName,color: Colors.white,fontSize: 20,),);
  }
}
