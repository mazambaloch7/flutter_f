import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_f/chapter10/chornaapp_116/Models/WorldStateModel.dart';
import 'package:flutter_f/chapter10/chornaapp_116/servies/state_servies.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'dart:math' as math;

import 'package:pie_chart/pie_chart.dart';

import 'ContriesList.dart';



class WorldStates extends StatefulWidget {
  const WorldStates({Key? key}) : super(key: key);



  @override
  State<WorldStates> createState() => _WorldStatesState();
}

class _WorldStatesState extends State<WorldStates> with TickerProviderStateMixin  {


  late final AnimationController _controler =  AnimationController(
      duration: Duration(seconds:  10),
      vsync: this)..repeat();




  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controler.dispose();
  }


  final colorList = <Color>[
   const Color(0xff4285F4),
   const Color(0xff7df442),
   const Color(0xfff4425d),

  ];


  @override
  Widget build(BuildContext context) {

    StatesServies statesServies =  StatesServies();


    return Scaffold(
      appBar: AppBar  (title: Text("World States"),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),


        body: Column(

          children: [




            SizedBox(height: MediaQuery.of(context).size.height *.01,),



        FutureBuilder(
          future: statesServies.fetchWorldStateRecodes(),
          builder: ((context, AsyncSnapshot<WorldStateModel> snapshot) {

            print(" snapshot.data: ${snapshot.data!.active!.toString()}");
        if(!snapshot.hasData){

          return Expanded(
            flex: 1,
             child: SpinKitFadingCircle(
               size: 100,
               color: Colors.teal,
               controller: _controler,
             ) ,

          );
    }
          else{
            return           Column(
                children: [

                  PieChart(
                    dataMap: {
/*
                      "Total": 52.0 ,
                      "Recovered": 52.0 ,
                      "Death": 52.0 ,
*/


                "Case": double.parse(snapshot.data!.cases!.toString()),
                "Recovered": double.parse(snapshot.data!.recovered!.toString()),
                "Deaths": double.parse(snapshot.data!.deaths!.toString()),



                    },

                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: true
                    ),


                    animationDuration: Duration(milliseconds: 12000),
                    chartType: ChartType.ring,
                    colorList: colorList,
                    chartRadius: MediaQuery.of(context).size.width/ 3.2,
                    legendOptions: LegendOptions(
                        legendPosition: LegendPosition.left
                    ),
                  ),


                  Card(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15 ),
                      child: Column(
                        children: [

                      /*    ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),
                          ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),
                          ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),
*/
                              ReuseUsedAbleCode(title: "Total", value: snapshot.data!.cases.toString()),
                    ReuseUsedAbleCode(title: "Death", value: snapshot.data!.deaths.toString()),
                    ReuseUsedAbleCode(title: "Recovered", value: snapshot.data!.recovered.toString()),
                    ReuseUsedAbleCode(title: "Active", value: snapshot.data!.active.toString()),
                    ReuseUsedAbleCode(title: "Critical", value: snapshot.data!.critical.toString()),
                    ReuseUsedAbleCode(title: "TodayCases", value: snapshot.data!.todayCases.toString()),
                    ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),
                    ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),

                          SizedBox(
                            height: 50.0,
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ContriesList()));
                            },
                            child: Container(
                              child: Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(50.0),


                                ),

                                child: Center(
                                  child: Text('Track Countires ', style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22
                                  ),),
                                ),
                              ),
                            ),
                          ),


                          SizedBox(
                            height: 50.0,
                          ),

                        ],
                      ),
                    ),
                  )

                ]
            );
        }


        })),







/*          Column(
          children: [

            PieChart(
              dataMap: {
                "Total": 52.0 ,
                "Recovered": 52.0 ,
                "Death": 52.0 ,

*//*

                "Total": double.parse(snapshot.data!.cases!.toString()),
                "Recovered": double.parse(snapshot.data!.recovered!.toString()),
                "Deaths": double.parse(snapshot.data!.deaths!.toString()),

*//*


              },

              chartValuesOptions: const ChartValuesOptions(
                  showChartValuesInPercentage: true
              ),


              animationDuration: Duration(milliseconds: 12000),
              chartType: ChartType.ring,
              colorList: colorList,
              chartRadius: MediaQuery.of(context).size.width/ 3.2,
              legendOptions: LegendOptions(
                  legendPosition: LegendPosition.left
              ),
            ),


            Card(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15 ),
                child: Column(
                  children: [

                    ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),
                    ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),
                    ReuseUsedAbleCode(title: "Death", value: 15.00.toString()),

                    *//*    ReuseUsedAbleCode(title: "Total", value: snapshot.data!.cases.toString()),
                    ReuseUsedAbleCode(title: "Death", value: snapshot.data!.deaths.toString()),
                    ReuseUsedAbleCode(title: "Recovered", value: snapshot.data!.recovered.toString()),
                    ReuseUsedAbleCode(title: "Active", value: snapshot.data!.active.toString()),
                    ReuseUsedAbleCode(title: "Critical", value: snapshot.data!.critical.toString()),
                    ReuseUsedAbleCode(title: "TodayCases", value: snapshot.data!.todayCases.toString()),
                    ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),
                    ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),

*//*
                    SizedBox(
                      height: 50.0,
                    ),

                    Container(
                      child: InkWell(
                        onTap: (){},
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: Colors.teal,
                            borderRadius: BorderRadius.circular(50.0),


                          ),

                          child: Center(
                            child: Text('Track Countires ', style: TextStyle(
                                color: Colors.white,
                                fontSize: 22
                            ),),
                          ),
                        ),
                      ),
                    ),


                    SizedBox(
                      height: 50.0,
                    ),

                  ],
                ),
              ),
            )

          ]
        )*/

          ],
        )

    ) ;
  }
}


class ReuseUsedAbleCode extends StatelessWidget {


  String title, value;


   ReuseUsedAbleCode({Key? key,  required this.title ,  required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,


            children: [

              Text(title),
              Text(value),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          Divider(
            height: 2,
            color: Colors.black45,
          ),
        ]
      ),
    );
  }
}
