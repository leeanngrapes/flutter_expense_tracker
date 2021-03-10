import 'package:flutter/material.dart';

ButtonTheme raisedButton(
    {VoidCallback onClick,
    String text,
    Color textColor,
    Color color,
    Color splashColor,
    double borderRadius,
    double minWidth,
    double height,
    double margin,
    Color borderSideColor,
    TextStyle style,
    Widget leadingIcon,
    Widget trailingIcon}) {
  return ButtonTheme(
    minWidth: minWidth,
    height: height,
    child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 24),
          side: BorderSide(color: borderSideColor ?? color),
        ),
        textColor: Colors.white,
        color: Colors.deepPurpleAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildLeadingIcon(leadingIcon),
            Text(
              text ?? '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
                letterSpacing: 1.2,
              ),
            ),
            _buildTrailingIcon(trailingIcon),
          ],
        ),
        onPressed: () {
          return onClick();
        }),
  );
}

Widget _buildLeadingIcon(Widget leadingIcon) {
  if (leadingIcon != null) {
    return Row(
      children: <Widget>[leadingIcon, SizedBox(width: 10)],
    );
  }
  return Container();
}

Widget _buildTrailingIcon(Widget trailingIcon) {
  if (trailingIcon != null) {
    return Row(
      children: <Widget>[trailingIcon, SizedBox(width: 10)],
    );
  }
  return Container();
}
