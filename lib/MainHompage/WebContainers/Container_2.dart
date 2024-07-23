import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kenshin_clone/Homepage.dart';
import 'package:provider/provider.dart';
import '../../provider.dart';
import '../../FadeInDemo.dart';
import '../../Settings.dart';
class WebContainer_2 extends StatefulWidget{
  final ScrollController controller;
  WebContainer_2({required this.controller});
  @override
  State<WebContainer_2> createState() => _WebContainer_2State();
}

class _WebContainer_2State extends State<WebContainer_2> with TickerProviderStateMixin {



  @override
  void initState(){


    super.initState();


  }
  @override
  void didChangeDependencies(){


    // var result = Provider.of<MyScrollPosition>(context, listen: false);
    // widget.controller.addListener(() {
    //   if((result.scrollPosition > 600 && !result.isScrollUp) || (result.isScrollUp && result.scrollPosition < 1000 ) ){
    //     AnimationController_0.forward();
    //   }
    //
    //   if((result.scrollPosition > 800 && !result.isScrollUp) || (result.isScrollUp && result.scrollPosition < 1200 ) ){
    //     AnimationController_1.forward();
    //   }
    //   if((result.scrollPosition > 1000 && !result.isScrollUp) || (result.isScrollUp && result.scrollPosition < 1400 ) ){
    //     AnimationController_2.forward();
    //   }
    //   if((result.scrollPosition > 1200 && !result.isScrollUp) || (result.isScrollUp && result.scrollPosition < 1600 ) ){
    //     AnimationController_3.forward();
    //   }
    //
    // });

  }
  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.fromLTRB(rem(2),rem(10),rem(2),rem(10)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  FadeInDemo2(
                    scrollController: widget.controller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(

                          style:ElevatedButton.styleFrom(

                            backgroundColor: Colors.white,
                            surfaceTintColor: Colors.white,
                            foregroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                            padding: EdgeInsets.fromLTRB(rem(0.75), rem(0.25), rem(0.75), rem(0.25)),
                            shape: RoundedRectangleBorder(side: BorderSide(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                width: 1,
                                style: BorderStyle.solid
                            ), borderRadius: BorderRadius.circular(24)),

                          )  ,
                          onPressed: (){print("get in touch");}, child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(width: 4,height: 4, decoration: BoxDecoration(borderRadius: BorderRadius.circular(50) ,color: Colors.black),),
                              Container(width: rem(0.5),),
                              Text("ABOUT" ,style:  TextStyle(color: Colors.black, fontSize: rem(1),  ),),
                            ],
                          ),),
                        Container(height: rem(1), color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width, height: 1, color: Color.fromRGBO(0, 0, 0, 0.1),),
                      ],
                    ),
                  ),
                  FadeInDemo2(
                    scrollController: widget.controller,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0,rem(3),0,rem(8)),
                      child: Text("We are a team of passionate and crazy individuals dedicated to bringing your ideas to life. With a keen eye for aesthetics, attention to detail, and a deep understanding of design principles, we strive to deliver exceptional results that exceed your expectations", style: TextStyle(fontWeight: FontWeight.w500 , fontSize: rem(3.5)),),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: rem(3)),
                        child:

                        FadeInDemo2(
                          scrollController: widget.controller,
                          child: Row(
                            children: [
                              Container(
                                width:  (MediaQuery.of(context).size.width-64)/12*2,
                                child: OurResults(text: "10", person: "year", explanation: "In the digital design industry",),

                              ),


                              Padding(
                                padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width-64)/12),
                                child: OurResults(text: "12", person: "country", explanation: "Work across around the world",),
                              ),


                            ],
                          ),
                        ),
                      ),
                      FadeInDemo2(
                        scrollController: widget.controller,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width:  (MediaQuery.of(context).size.width-64)/12*2,
                                  child: OurResults(text: "61", person: "Project", explanation: "With satisfaction from customer",),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width-64)/12),
                                  child: OurResults(text: "30", person: "people", explanation: "Talent on the team"),
                                )

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width-64)/12),
                              child: ElevatedButton(

                                style:ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  surfaceTintColor: Colors.white,
                                  foregroundColor: Colors.white,
                                  shadowColor: Colors.transparent,
                                  padding: EdgeInsets.fromLTRB(rem(1), rem(0.25), rem(0.25), rem(0.25)),
                                  shape: RoundedRectangleBorder(side: BorderSide(
                                      color: Color.fromRGBO(0, 0, 0, 0.1),
                                      width: 1,
                                      style: BorderStyle.solid
                                  ), borderRadius: BorderRadius.circular(24)),

                                )  ,
                                onPressed: (){print("get in touch");}, child: Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("More About us" ,style:  TextStyle(color: Color.fromRGBO(0, 0, 0, 0.85),fontWeight: FontWeight.w400 ,fontSize: rem(1)),),
                                  SizedBox(width: rem(0.5),),
                                  Container(
                                      decoration:  BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.1)),),
                                      child: Icon(Icons.arrow_forward_sharp , color: Colors.black,)
                                  )
                                ],),),
                            )

                          ],
                        ),
                      ),


                    ],
                  )
                ],

              )

            ],
          ),
      ),
    );
  }
}


class OurResults extends StatelessWidget{
  OurResults({required this.text, required this.person, required this.explanation});
  final String text;
  final String person;
  final String explanation;
  @override
  Widget build(BuildContext context){
    return  Row(
      children: [
        Container(width: 1, height: 130,  color: Color.fromRGBO(0, 0, 0, 0.1),),
        Padding(
          padding: EdgeInsets.only(left: rem(1.5)),
          child: Container(
            width:  (MediaQuery.of(context).size.width-64)/12*2-rem(1.5)-1 ,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("$text", style: TextStyle(fontSize: rem(5)),),  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("($person)", style: TextStyle(fontSize: rem(1), fontWeight: FontWeight.w400), ),
                  )],),
                Text("$explanation", style: TextStyle(fontSize: rem(1) , color: Color.fromRGBO(0, 0, 0, 0.5)),)
              ],
            ),
          ),
        ),
      ],
    );



  }

}