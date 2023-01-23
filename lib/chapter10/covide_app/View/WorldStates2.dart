

import 'package:flutter/material.dart';
import 'package:flutter_f/chapter10/chornaapp_116/Models/WorldStateModel.dart';
import 'package:flutter_f/chapter10/covide_app/services/state_services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatesScreen extends StatefulWidget {
  const WorldStatesScreen({Key? key}) : super(key: key);

  @override
  State<WorldStatesScreen> createState() => _WorldStatesScreenState();
}

class _WorldStatesScreenState extends State<WorldStatesScreen> with TickerProviderStateMixin {




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

    StatesServies2 servies2 =  StatesServies2();


    return Scaffold(

      body: SafeArea(




        child:  Column(
            children: [

              SizedBox(height: MediaQuery.of(context).size.height *.01 ),



              FutureBuilder(

                  future: servies2.fetchWorldStatesRecode(),
                  builder: ((context, AsyncSnapshot<WorldStateModel> snapshot) {
                if(!snapshot.hasData){

                  print("Snapshot has data :  ${snapshot.hasData}");

                  return Expanded(

                      flex: 1,

                    child: SpinKitFadingCircle(
                      color:  Colors.deepOrange,
                      size:  100,
                      controller: _controler,
                    )
                    );

                }
                else{

                  print("Api showing the the error plese the else   ${snapshot.error} ");

                  return Column(
                    children: [

                      PieChart(
                        dataMap: {
                          "Total": 52.0 ,
                          "Recovered": 52.0 ,
                          "Death": 52.0 ,

/*

                    "Total": double.parse(snapshot.data!.cases!.toString()),
                    "Recovered": double.parse(snapshot.data!.recovered!.toString()),
                    "Deaths": double.parse(snapshot.data!.deaths!.toString()),

*/


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

                              /*    ReuseUsedAbleCode(title: "Total", value: snapshot.data!.cases.toString()),
                        ReuseUsedAbleCode(title: "Death", value: snapshot.data!.deaths.toString()),
                        ReuseUsedAbleCode(title: "Recovered", value: snapshot.data!.recovered.toString()),
                        ReuseUsedAbleCode(title: "Active", value: snapshot.data!.active.toString()),
                        ReuseUsedAbleCode(title: "Critical", value: snapshot.data!.critical.toString()),
                        ReuseUsedAbleCode(title: "TodayCases", value: snapshot.data!.todayCases.toString()),
                        ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),
                        ReuseUsedAbleCode(title: "TodayDeaths", value: snapshot.data!.todayDeaths.toString()),

*/
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
                  );

                }



              })),




            ]
        ),
      ),

    );
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
