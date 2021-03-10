import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final String buttonTitle;
  final Widget buttonIcon;
  final String text;
  final Function buttonAction;

  BigButton({
    this.buttonTitle,
    this.buttonIcon,
    this.text,
    this.buttonAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 55,
      margin: EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: buttonAction,
        style:
            // ButtonStyle(
            //   backgroundColor:
            //       MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
            //   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            // ),

            ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          //primary: Colors.red,
          primary: Theme.of(context).primaryColorDark,
          onPrimary: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            buttonIcon,
          ],
        ),
      ),
    );
  }
}
