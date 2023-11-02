
import 'package:flutter/material.dart';
import 'scroll_bar_widget.dart';

//typedef IndexedHeight = double Function(int);
GlobalKey containerKey = GlobalKey();

class ScrollableTextView extends StatefulWidget {

  final Widget child ;
  final double? contentMarginHorizontal ;
  final BoxDecoration? contentBoxDecoration;
  final double? scrollBarMarginTop;
  final double? thumbLength ;

  const ScrollableTextView({Key? key,required this.child,this.contentMarginHorizontal,this.contentBoxDecoration,this.scrollBarMarginTop =20,this.thumbLength =50}) : super(key: key);

  @override
  _ScrollableTextViewState createState() => _ScrollableTextViewState();
}

class _ScrollableTextViewState extends State<ScrollableTextView> with TickerProviderStateMixin{
  ScrollController _controller =new ScrollController(initialScrollOffset: 0.0,  keepScrollOffset: false,);
  double _barOffset=0.0;
  double _scrollBarLength=0.0;
  bool _scrollBarIsEnabled=false;
  bool _scrollBarIsVisible=true;
  double _containerLength=0.0;


  _scrollListener() {
    double x =_controller.position.maxScrollExtent/(_scrollBarLength-widget.thumbLength!);
    if (_controller.hasClients  && !_scrollBarIsEnabled){

      if(_controller.position.maxScrollExtent>0.0){

        if(_controller.position.pixels==_controller.position.maxScrollExtent) {
          setState(() {
            _barOffset = _scrollBarLength - widget.thumbLength!;
          });
        }
        else{
          if(_controller.position.pixels/x<_scrollBarLength/2 ){

            setState(() {
              _barOffset=(_controller.position.pixels/x);
            });
          }else{

            setState(() {
              _barOffset=(_controller.position.pixels/x);
            });
          }
        }

      }
    }

  }
  _initView(){
    WidgetsBinding.instance
        .addPostFrameCallback((_) {
      double containerHeight = (containerKey?.currentContext?.findRenderObject() as RenderBox)!.size.height;


      _scrollBarLength =containerHeight-widget.scrollBarMarginTop!-(widget.scrollBarMarginTop!*1.5);

      if(_controller.hasClients){
        if(_controller.position.maxScrollExtent==0)
          _scrollBarIsVisible=false;
        else
          _scrollBarIsVisible=true;
      }

      _containerLength =containerHeight-(_scrollBarLength+widget.scrollBarMarginTop!);

      setState(() {});
    });

  }

  @override
  void initState() {
    super.initState();
    _initView();
    _controller.addListener(_scrollListener);
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      key: containerKey,
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        GestureDetector(
          onVerticalDragUpdate: _onVerticalDragUpdate,
          onVerticalDragEnd: _onVerticalDragEnd,
          onVerticalDragStart: _onVerticalDragStart,
          child: Container(
              decoration: widget.contentBoxDecoration ?? BoxDecoration(
                color:Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              width: MediaQuery.of(context).size.width,
              margin:  EdgeInsets.symmetric(horizontal: widget.contentMarginHorizontal ?? 20.0),
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: <Widget>[

                  SingleChildScrollView(
                      controller: _controller,
                      scrollDirection: Axis.vertical,
                      child:Column(
                        children: <Widget>[
                          widget.child,
                          SizedBox(height: _containerLength,)
                        ],
                      )
                  ),
                  _scrollBarIsVisible ?  Padding(
                      padding:  EdgeInsets.only(right:10.0,left: 130,top:widget.scrollBarMarginTop!),
                      child: ScrollBar(barOffset: _barOffset,scrollBarLength: _scrollBarLength,thumbLength: widget.thumbLength,)
                  ):Container()
                ],
              )
          ),
        ),

      ],
    );
  }



  void _onVerticalDragStart(DragStartDetails details) {
    setState(() {
      _scrollBarIsEnabled=true;
    });
  }

  void _onVerticalDragUpdate(DragUpdateDetails details) {

    if(_scrollBarIsEnabled){
      double x =_controller.position.maxScrollExtent/_scrollBarLength;
      double sum=_barOffset;
      sum+= details.delta.dy;
      if(sum>0){
        if(sum<_scrollBarLength/2) {
          setState(() {
            _barOffset += details.delta.dy;
          });
          _controller.jumpTo((_barOffset*x));
        }
        else if((sum+widget.thumbLength!).round() < _scrollBarLength ) {
          setState(() {
            _barOffset += details.delta.dy;
          });
          _controller.jumpTo((_barOffset*x)+(widget.thumbLength!*x));
        }

      }
    }
  }

  void _onVerticalDragEnd(DragEndDetails details) {
    setState(() {
      _scrollBarIsEnabled=false;
    });
  }
}
