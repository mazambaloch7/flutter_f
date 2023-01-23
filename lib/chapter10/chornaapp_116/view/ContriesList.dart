import 'package:flutter/material.dart';
import 'package:flutter_f/chapter10/chornaapp_116/servies/state_servies.dart';

class ContriesList extends StatefulWidget {
  const ContriesList({Key? key}) : super(key: key);

  @override
  State<ContriesList> createState() => _ContriesListState();
}

class _ContriesListState extends State<ContriesList> {


  TextEditingController  searchController  = TextEditingController();




  @override
  Widget build(BuildContext context) {

    StatesServies statesServies = StatesServies();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text("Contries"),
      ),
      body: SafeArea(
        child:  Padding (
          padding: EdgeInsets.symmetric(horizontal: 20),

          child:  Column(
          children: [
            TextFormField(
            controller: searchController,

              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                hintText: 'Seach with Contry name' ,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),

                )
              )

        ), 
            
            Expanded(child: FutureBuilder(

                future:    statesServies.fetchContriesList(),
                builder:  (context, snapshot) {

              if(snapshot.hasData){

                 return Text('Data Loading ') ;

              }
              else {
                return ListView.builder(itemBuilder: ((context, index) {
                  return Column(
                      children: []
                  );
                }));
              }

            }
            ),
            ),



          ],

        ),

        ),

      ),
    );
   }
}
