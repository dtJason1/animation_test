import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
import './WebWidgets.dart';

class WebContainer_3 extends StatefulWidget{
  final ScrollController controller;
  WebContainer_3({required this.controller});
  @override
  State<WebContainer_3> createState() => _WebContainer_3State();
}

class _WebContainer_3State extends State<WebContainer_3> with TickerProviderStateMixin {


  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(2), rem(10), rem(2), rem(10)),
        child: Container(

          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start  ,

            children: [
              FadeInDemo2(
                scrollController: widget.controller,
                child:

                    containerHeaderButton("SERVICES" )

              ),
              SizedBox(height: rem(1),),
              FadeInDemo2(
                  scrollController: widget.controller,
                  child: Container(width: MediaQuery.of(context).size.width, height: 1,color: Color.fromRGBO(0, 0, 0, 0.1),)),
              SizedBox(height: rem(3),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FadeInDemo2(
                        scrollController: widget.controller,
                        child: Container(
                          width: ((MediaQuery.of(context).size.width)-(2*rem(2)))/12*3,
                          child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(width: ((MediaQuery.of(context).size.width)-(2*rem(2)))/12*3 , height: ((MediaQuery.of(context).size.width)-(2*rem(2)))/12*3/16*9,
                                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bezos.jpg"), fit: BoxFit.fitWidth))


                              ),
                              Container(height: rem(1),),
                              Text("We create business value from strategy to perfect execution", softWrap: true, style: TextStyle(fontSize: rem(1.4), fontWeight: FontWeight.w400),)

                      ],
                    ),
                  )

                  ),
                  SizedBox(width: (MediaQuery.of(context).size.width- (2*rem(2))  )/12*4 ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: List.generate(serviceList.length, (index) => Services(text: serviceList[index], columnList: "(0${index+1})", scrollController: widget.controller, fontValue: 5, )) ),

                      SizedBox(height: rem(4),),
                      FadeInDemo2(
                        scrollController: widget.controller,
                        child: containerFooterButton("View Detail"),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



