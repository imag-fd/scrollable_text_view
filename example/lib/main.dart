import 'package:flutter/material.dart';
import 'package:scrollable_text_view/scrollable_text_view.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:Column(
            children: [
              SizedBox(height: 30,),
              Expanded(child: ScrollableTextView(
                scrollBarMarginTop: 20,
                thumbLength: 50,
                contentMarginHorizontal: 20,
                contentBoxDecoration: BoxDecoration(
                  color:Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(35.0)),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(left:20,right: 30,top:40,bottom: 25),
                    child: Text("ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        " ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView "
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                        "ScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextViewScrollableTextView"
                    )),
              ),),
              SizedBox(height: 10,)
            ],
          )
        )
      )
  );
}



