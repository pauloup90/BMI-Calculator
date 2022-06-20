// ignore_for_file: non_constant_identifier_names, camel_case_types, avoid_print, missing_required_param
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_result.dart';
class calculator_screen extends StatefulWidget {
  const calculator_screen({Key? key}) : super(key: key);
  @override
  State<calculator_screen> createState() => _State();
}
class _State extends State<calculator_screen> {
bool isMale =true;
double Height =230;
int Weight =50;
int AGE =21;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:const Color(0xFF111328),
     appBar:AppBar(
      title:
      const Text ('BMI CALCULATOR',
       style: TextStyle(
      fontWeight:FontWeight.bold,fontSize:(25),
       color: Colors.white,
     ),
     ) ,
      backgroundColor:   const Color(0xFF111328),
     centerTitle:true ,
      ),
        body:Column(
        children: [
        Expanded(child:
          Row(
           children: [
           Expanded(child:Padding(
           padding:const EdgeInsets.all(7),
            child: GestureDetector(
            onTap: (){
            setState(() {
            isMale =true;
            });
             },
                 child:Container(
                   child:Column(
                     mainAxisAlignment:MainAxisAlignment.center ,
                     children:const [
                         Icon(
                           Icons.male,
                             size:100 ,
                                color: Colors.white,
                                 ),
                    Text('MALE',style: TextStyle(color: Colors.white54, fontSize: 20,), )
                  ],
                ),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isMale? const Color(0xFFE83D69) :const Color(0xFF0A0E20),
              ),
             ),
            ),
           ),
         ),
        Expanded (child:Padding(
          padding:const EdgeInsets.all(7),
          child:GestureDetector(
            onTap:(){
              setState(() {
               isMale=false;


              });
            },
          child:Container(
            child: Column(mainAxisAlignment:MainAxisAlignment.center ,
              children:const [
                Icon(
                  Icons.female,
                  color: Colors.white,
                  size:100 ,
                ),
                Text('FEMALE',style: TextStyle(color:Colors.white54 , fontSize: 20,), )
              ],
            ),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
              color: isMale ? const Color(0xFF0A0E20):const Color(0xFFE83D69) ,
            ),
          ),

        ),
         ),
        ),
           ],
    ),
        ),
        Expanded(
          child:Padding(
            padding:const EdgeInsets.all(7) ,
          child:Container(
          child:Column(
           mainAxisAlignment:MainAxisAlignment.center ,
           children : [
              const Text(
                 'Height',
                style: TextStyle(
                    color: Colors.white54, fontSize: 30)
            ),
            Row(crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment:MainAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children:
              [
              Text('${Height.round()}',
                style: const TextStyle(
                    color: Colors.white, fontSize: 60
                    ,fontWeight:FontWeight.w900,
    )
            ),
              const SizedBox(width: 5,),
              const Text('cm',
                  style: TextStyle(
                    color: Colors.white54,fontSize:20,
                  )
              ),
            ],
            ),
          Slider(value:Height  ,

             max:250 ,
            min:80 ,
            thumbColor:const Color(0xFFE83D66),
            inactiveColor:const Color(0xFFFFFFFF),
            activeColor:const Color(0xFFE83D66),
            onChanged:(value){
            setState(() {
              Height =value;
            });
            print(value);
            },
          ),
          ],
        ),
           decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
            color:  const Color(0xFF0A0E20),
        ),
        ),
        ),
                ),
        Expanded(child:Padding(
         padding:const EdgeInsets.all(7) ,

          child:Row(
           children: [
         Expanded(child:
         Container(
           child:Column( mainAxisAlignment:MainAxisAlignment.center ,
             children: [
               const Text('Weight',style:
               TextStyle(color:Colors.white54 , fontSize: 30,), ),
                Text('$Weight',
                   style: const TextStyle(
                     color: Colors.white, fontSize: 50
                     ,fontWeight:FontWeight.w900,
                   )
               ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   FloatingActionButton(onPressed: (){
                     setState(() {
                       Weight --;
                     });
                   },
                     backgroundColor:const Color(0xFFE83D66),
                     heroTag: 'Weight --',
                     mini: false,
                     child:const Icon(
                       Icons.remove,
                     ) ,
                   ),
                  const SizedBox( width: 10,),
                   FloatingActionButton(onPressed: (){
                     setState(() {
                       Weight ++;
                     });
                   },
                     backgroundColor:const Color(0xFFE83D66),
                     heroTag: 'Weight ++',
                     mini: false,
                     child:const Icon(
                       Icons.add,
                       color: Colors.white54,
                     ) ,
                   ),
                 ],
               ),
             ],
           ),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(20),
             color:  const Color(0xFF0A0E20),
           ),
         ),
         ),
            const SizedBox(width: 12,),
          Expanded(child:

            Container(
              child:Column( mainAxisAlignment:MainAxisAlignment.center ,
                children: [
                  const Text('AGE',style:
                  TextStyle(color:Colors.white54 , fontSize: 30,), ),
                   Text('$AGE',
                      style: const TextStyle(
                        color: Colors.white, fontSize: 50
                        ,fontWeight:FontWeight.w900,
                      )
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      FloatingActionButton(onPressed: (){
                        setState(() {
                          AGE --;
                        });
                      },
                        backgroundColor:const Color(0xFFE83D66),
                        heroTag: 'AGE --',
                        mini: false,
                        child:const Icon(

                          Icons.remove,
                        ) ,
                      ),
                      const SizedBox( width: 10,),

                      FloatingActionButton(onPressed: (){
                        setState(() {

                          AGE ++;
                        });
                      },
                        backgroundColor:const Color(0xFFE83D66),
                        heroTag: 'AGE ++',
                        mini: false,
                        child:const Icon(
                          Icons.add,
                        ) ,
                      ),
                    ],

                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),

                color:  const Color(0xFF0A0E20),
              ),
            ),
             ),
      ],
         ),
      ),
        ),
           const SizedBox (height:2),
          Container(
           width: double.infinity,
           color: const Color(0xFFE83D66),
          child : MaterialButton(
          onPressed: (){
            double result = Weight / pow (Height/100,2);
            print(result.round() );
            Navigator.push(context, MaterialPageRoute(
                builder:(context)=> BMIResultScreen(

                   age:AGE ,
                  isMale:isMale ,
                  result:result.round(),
                ),
            ),
            );
          },
          height:70,
           child : const Text('CALCULATE',
           style: TextStyle( color:Colors.white54,fontSize: (20),),
         )
         ,)
       ),
    ],
    ) ,
    );
  }
}
//
// width: double.infinity,
// color:  const Color(0xFF0A0E20),
//
