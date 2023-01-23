import 'package:flutter/material.dart';
import 'package:flutter_f/chapter14/favouritScreem/provider_favourite.dart';
import 'package:provider/provider.dart';

class MyFavouriteItem extends StatefulWidget {
  const MyFavouriteItem({Key? key}) : super(key: key);

  @override
  State<MyFavouriteItem> createState() => _MyFavouriteItemState();
}

class _MyFavouriteItemState extends State<MyFavouriteItem> {



  @override
  Widget build(BuildContext context) {

    final favouriteProvider = Provider.of<FavouriteProvider>(context);



    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: favouriteProvider.sekectedItem.length,
              itemBuilder: ((context, index) {
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
                title: Text("Item"+favouriteProvider.sekectedItem.length.toString()),
                trailing: favouriteProvider.sekectedItem.contains(index)? Icon(Icons.favorite): Icon(Icons.favorite_border_outlined),


              );
            }));
          })))

        ],
      ),
      
    );
  }
}
