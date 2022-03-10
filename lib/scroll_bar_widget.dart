import 'package:flutter/material.dart';

class ScrollBar extends StatelessWidget {

  final double scrollBarLength;
  final double barOffset;
  final double thumbLength;

  const ScrollBar({Key key, this.scrollBarLength, this.barOffset, this.thumbLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 10,
          height: scrollBarLength,
          decoration: BoxDecoration(
            color:Colors.grey,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: barOffset>0.0 ? barOffset:0.0 ),
          width: 10,
          height: thumbLength,
          decoration: BoxDecoration(
            color:Colors.blueAccent,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        )
      ],
    );
  }
}
