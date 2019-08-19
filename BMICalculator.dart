import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/slider.dart';


class BMICalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BMIState();
  }

}

class BMIState extends State<BMICalculator>{

  int _weight=0;
  int _age=0;
  final scaffoldKey=GlobalKey<ScaffoldState>();
  void _incrementCounterWeight(){
    setState(() {
      _weight++;
    });
  }

  void _decrementCounterWeight(){
    setState(() {
      _weight--;
    });
  }

  void _incrementCounterAge(){
    setState(() {
      _age++;
    });
  }

  void _decrementCounterAge(){
    setState(() {
      _age--;
    });
  }

  var text="HEIGHT";
  var text1="MALE";
  var text2="FEMALE";
  var text3="WEIGHT";
  var text4="AGE";
  var slideValue=0.0;
  Color fColor=Colors.red;

  TextEditingController textFieldController=TextEditingController();

  double calculation=0.0;
//  String calResult;
  String result;
  String correctOutput;

  void calculateBMI(BuildContext context){
    setState(() {
      String calResult=textFieldController.text;
      calculation=_weight/((slideValue/100)*(slideValue/100));
      calResult=calculation.toStringAsFixed(1);

      Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation(text:calResult)),);

    });
  }

//  void displayResult(BuildContext context){
//
//    setState(() {
//      if(calculation<18.5){
//        correctOutput='Under Weight';
//      }else if(calculation>18.5 && calculation<=24.9){
//        correctOutput='Normal';
//      }else if(calculation>25 && calculation<=29.9){
//        correctOutput='Over Weight';
//      }else{
//        correctOutput='Obese';
//      }
//
//      Navigator.push(context, MaterialPageRoute(builder: (context)=>Navigation(display: correctOutput,)),);
//    });
//  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("BMI Calculator",
        style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: <Widget>[

                Container(
                  child: Material(
                    color: Colors.black,
                    elevation: 4.0,
                    child: Container(
                      width: 4,
                      height: 5,
                    ),
                  ),
                ),

                Container(
              child: Material(
                color: Colors.white10,
                elevation: 20.0,
                child: Container(
                  width: 180.0,
                    height: 155.0,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: Icon(Icons.person,size: 60.0,color: Colors.white),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: RaisedButton(color: Colors.white10,
                        child: Text("MALE",
                        style: TextStyle(color: Colors.white,fontSize: 25.0),
                        ),
                        ),)
                    ),

                  ],),
                ),
              ),
            ),

            Container(
              color: Colors.black,
              child: Material(
                color: Colors.black,
                elevation: 4.0,
                child: Container(
                  width: 10,
                  height: 170,
                ),
              ),
            ),

            Container(

              child: Material(
              color: Colors.white10,
              elevation: 4.0,
              child: Container(
                width: 180.0,
                height: 155.0,
                child: Column(children: <Widget>[

                  Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(

                    child: Container(
                      child:Icon(Icons.person,size: 60.0,color: Colors.white)

                    ),
                  ),
                ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: RaisedButton(color: Colors.white10,
                          child: Text("FEMALE",
                            style: TextStyle(color: Colors.white,fontSize: 25.0),
                          ),
                        ),)
                  ),



                ],),
              ),
            ),

    ),




              ],
            ),
          ),


          Container(
            color: Colors.black,
            child:Align(
            child: Material(
              color: Colors.black,
              elevation: 4.0,
              child: Container(
                color: Colors.black,
                width: 2,
                height: 1,
              ),
            ),
          ),
          ),

          Container(
            color: Colors.black,
            child: Align(
              child: Material(
                color: Colors.white10,
                elevation: 4.0,
                child: Container(
                  width: 368.0,
                  height: 180.0,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(child: Text(text,
                        style: TextStyle(color: Colors.white,fontSize:25.0,fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:Container(child:Text("$slideValue cm",
                          style: TextStyle(color: Colors.white,fontSize:55.0,fontWeight:FontWeight.bold),
                        ))
                    ),
                    Padding(
                        padding: const EdgeInsets.all(4.0),
                        child:Container(
                            child:Slider(
                              min:0.0,
                              max:200.0,
                              divisions: 200,
                              value: slideValue,
                              activeColor: Colors.pink,
                              inactiveColor: Colors.grey,
                              onChanged: (newValue){
                                setState(() {
                                  slideValue=newValue;
                                });
                              },
                            )
                        )
                    ),
                  ],),
                ),
              ),
            ),
          ),


          Container(
            color: Colors.black,
            child:Align(
              child: Material(
                color: Colors.black,
                elevation: 4.0,
                child: Container(
                  color: Colors.black,
                  width: 2,
                  height: 10,
                ),
              ),
            ),
          ),


      Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[


            Container(
              child: Material(
                color: Colors.white10,
                elevation: 20.0,
                child: Container(
                  width: 180.0,
                  height: 150.0,
                  child: Column(children: <Widget>[

                    Padding(
                        padding: const EdgeInsets.all(4.0),
                      child: Container(child: Text(text3,
                        style: TextStyle(color: Colors.white,fontSize:20.0,fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),

                    new Text(
                      '$_weight',
                      style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold)

                    ),

                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: new Row(
                          children: <Widget>[

                            Container(
                              color: Colors.black,
                              child:Align(
                                child: Material(
                                  color: Colors.black,
                                  elevation: 4.0,
                                  child: Container(
                                    color: Colors.white10,
                                    width: 10.0,
                                    height: 0.0,
                                  ),
                                ),
                              ),
                            ),

                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                              onPressed: _decrementCounterWeight,
                              heroTag: null,
//                              tooltip: 'Decrement',
                              child: new Icon(Icons.remove,size: 15.0,),
                            ),

                            Container(
                              color: Colors.black,
                              child:Align(
                                child: Material(
                                  color: Colors.black,
                                  elevation: 4.0,
                                  child: Container(
                                    color: Colors.white10,
                                    width: 40.0,
                                    height: 0.0,
                                  ),
                                ),
                              ),
                            ),

                          FloatingActionButton(
                          backgroundColor: Colors.white10,
                          onPressed: _incrementCounterWeight,
                            heroTag: null,
//                          tooltip: 'Increment',
                          child: new Icon(Icons.add,size: 15.0,),
                        ),
                          ],
                        ),


                      ),
                    ),

                  ],),
                ),
              ),
            ),


            Container(
              color: Colors.black,
              child: Material(
                color: Colors.black,
                elevation: 4.0,
                child: Container(
                  width: 10,
                  height: 20,
                ),
              ),
            ),

            Container(

              child: Material(
                color: Colors.white10,
                elevation: 4.0,
                child: Container(
                  width: 180.0,
                  height: 150.0,
                  child: Column(children: <Widget>[


                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(child: Text(text4,
                        style: TextStyle(color: Colors.white,fontSize:20.0,fontWeight: FontWeight.bold),
                      ),
                      ),
                    ),


                    new Text(
                        '$_age',
                        style: TextStyle(color: Colors.white,fontSize: 40.0,fontWeight: FontWeight.bold)

                    ),




                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        child: new Row(
                          children: <Widget>[

                            Container(
                              color: Colors.black,
                              child:Align(
                                child: Material(
                                  color: Colors.black,
                                  elevation: 4.0,
                                  child: Container(
                                    color: Colors.white10,
                                    width: 10.0,
                                    height: 0.0,
                                  ),
                                ),
                              ),
                            ),

                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                              onPressed: _decrementCounterAge,
                              heroTag: null,
//                              tooltip: 'Decrement',
                              child: new Icon(Icons.remove,size: 15.0,),
                            ),

                            Container(
                              color: Colors.black,
                              child:Align(
                                child: Material(
                                  color: Colors.black,
                                  elevation: 4.0,
                                  child: Container(
                                    color: Colors.white10,
                                    width: 40.0,
                                    height: 0.0,
                                  ),
                                ),
                              ),
                            ),

                            FloatingActionButton(
                              backgroundColor: Colors.white10,
                              onPressed: _incrementCounterAge,
                              heroTag: null,
//                              tooltip: 'Increment',
                              child: new Icon(Icons.add,size: 15.0,),
                            ),
                          ],
                        ),


                      ),
                    ),


                  ],),
                ),
              ),

            ),




          ],
        ),
      ),

//          Container(
//            color: Colors.black,
//            child:Align(
//              child: Material(
//                color: Colors.black,
//                elevation: 4.0,
//                child: Container(
//                  color: Colors.black,
//                  width: 2,
//                  height: 10,
//                ),
//              ),
//            ),
//          ),

          Container(
           child: Material(
             color: Colors.black,
             elevation: 2.0,
             child: Container(
               color: Colors.black,
               width: 420.0,
               height: 34.0,
               child: Column(
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(4.0),
                     child: TextField(
                       controller: textFieldController,
                       style: TextStyle(fontSize:2,color:Colors.white),
                     ),
                   )
                   
                 ],
               ),
             ),

           ),

          ),



          Container(
        color: Colors.black,
            child: Align(
              child: Material(
                color: Colors.pink,
                elevation: 4.0,
                child: Container(
                  width: 430,
                  height: 58,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                            color: Colors.pink,
                            child: Text('CALCULATE YOUR BMI',
                              style: TextStyle(color: Colors.white,fontSize: 22.0),
                            ),
                           onPressed: (){
                              calculateBMI(context);
                              // displayResult(context);
//                              Navigator.push(context,
//                                  CupertinoPageRoute(
//                                  builder: (context) => Navigation(),
//                              fullscreenDialog: true,
//                              ),
//                              );
                            }),
                      ),),
                    )
                  ],),
                ),
              ),
            ),
    ),

        ],
      ),

    );
  }
}



class Navigation extends StatelessWidget {
  final String text;
 // final String display;

  Navigation({Key key,@required this.text}):super(key:key);

  @override
  Widget build(BuildContext context) {

    var testing=double.parse('$text');

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text("BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Column(
        children: <Widget>[
          Container(
            width: 430,
            height: 525.5,
            color: Colors.black,
            child: Column(
              children: <Widget>[

                  Container(
                  child: Text("Your Result",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: Colors.white,fontSize: 28.0),
                  ),
                ),

                Container(
                  child: Material(
                    color: Colors.white10,
                    elevation: 4.0,
                    child: Container(
                      width: 370.0,
                      height: 465.0,
                      child: Column(children: <Widget>[

                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(

//                                child: Text('$display',style: TextStyle(fontSize: 24,color: Colors.white),)

                              child: Container(child: Text("NORMAL",
                                style: TextStyle(color: Colors.greenAccent,fontSize:22.0,fontWeight: FontWeight.bold),
                              ),
                              ),
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child:  Container(
                              child: Text('$testing',style: TextStyle(fontSize: 75.0,color: Colors.white,fontWeight: FontWeight.bold),
                              )
                          ),
                        ),


                        if(testing<18.5)
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Under Weight BMI range:",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("0 - 18.5 kg/m2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("You have a under body",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("weight",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("Maximize your weight!",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),



                                  ],
                                ),
                              ),
                            ),
                          ),

                        if(testing>18.5 && testing<=24.9)
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  Text("Normal BMI range:",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                                  Text(""),
                                  Text("18.5 - 25 kg/m2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                  Text(""),
                                  Text("You have a normal body",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                  Text(""),
                                  Text("weight. Good job!",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                  Text(""),



                                ],
                              ),
                            ),
                          ),
                        ),

                        if(testing>25.0 && testing<=29.9)
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Over Weight BMI range:",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("25.0 - 30.0 kg/m2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("You have a over body",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("weight.",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("Control your weight!",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),



                                  ],
                                ),
                              ),
                            ),
                          ),


                        if(testing>30.0)
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Text("Obese BMI range:",style: TextStyle(fontSize: 20.0,color: Colors.blueGrey,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("over 25 kg/m2",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("You have a obese body",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("weight.",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                                    Text(""),
                                    Text("Give more care!!!",style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),




                                  ],
                                ),
                              ),
                            ),
                          ),


                        Container(
                        height: 140.0,
                        width: 240.0,
                        child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                        color: Colors.white10,
                        child: Text('SAVE RESULT',
                        style: TextStyle(color: Colors.white,fontSize: 22.0),
                        ),
                        onPressed: (){

                        }),
                        ),),
                        ),
                        )
//
//                        Padding(
//                          padding: const EdgeInsets.all(4.0),
//                          child:  Container(
//                              child: Text(text,style: TextStyle(fontSize: 24,color: Colors.white),)
//                          ),
//                        ),



                      ],),
                    ),
                  ),

                ),

              ],
            ),
          ),

          Container(
            color: Colors.black,
            child:Align(
              child: Material(
                color: Colors.black,
                elevation: 4.0,
                child: Container(
                  color: Colors.black,
                  width: 2,
                  height: 20,
                ),
              ),
            ),
          ),

          Container(
            color: Colors.black,
            child: Align(
              child: Material(
                color: Colors.pink,
                elevation: 4.0,
                child: Container(
                  width: 430,
                  height: 56,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(child: Align(
                        alignment: Alignment.bottomCenter,
                        child: RaisedButton(
                            color: Colors.pink,
                            child: Text('RE-CALCULATE YOUR BMI',
                              style: TextStyle(color: Colors.white,fontSize: 15.0),
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context)=>BMICalculator()),
                              );
                            }),
                      ),),
                    )
                  ],),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
