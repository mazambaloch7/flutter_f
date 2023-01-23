import 'package:flutter/material.dart';
import 'package:flutter_f/chapter14/favouritScreem/myfavouriteItem.dart';
import 'package:flutter_f/chapter14/favouritScreem/provider_favourite.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}


class _FavouriteScreenState extends State<FavouriteScreen> {

  // List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    print("Build the main widgets");


    // final  favouriteProvider  = Provider.of<FavouriteProvider>(context);


    return Scaffold(


      appBar: AppBar(
        title: Text("Favourite List") ,
      actions: [
        InkWell(
      onTap: (){
        
        Navigator.push(context, MaterialPageRoute(builder: (context)=> MyFavouriteItem()) );
        
      },
      child: Icon(Icons.favorite)),

        SizedBox(
          width: 20,
        )

      ],
      ),

      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: ((context, index) {
            return Consumer<FavouriteProvider>(builder: ((context, favouriteProvider, child) {
              return  ListTile(
                onTap: (){
                  if(favouriteProvider.sekectedItem.contains(index)){

                    favouriteProvider.RemoveItem(index);
                    print("this item is remove from the list ${index}");

                  } else {

                    favouriteProvider.addItem(index);

                    print("this item is add from the  list ${index}");

                  }
                  print(index);

                } ,
                title: Text("Item"+index.toString()),
                trailing: favouriteProvider.sekectedItem.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_border_outlined),


              );
            }));
           })))

        ],
      ),
    );
  }
}
