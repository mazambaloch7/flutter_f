
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

body: SingleChildScrollView(
  child:   SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,


      children: [
        SizedBox(
          height: 50,
        ),

        Row(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: 50,
            height: 50,
            image: AssetImage(
            'images/logo.png'
        ),
        ),

            SizedBox(
              width: 10,
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Maintenance ", style: TextStyle(
                    fontSize: 20,
                  color: Color(0xff100f0f),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik Regular'
                ),) ,

                Text("Box ", style: TextStyle(
                    fontSize: 20,
                  color: Color(0xffc7691d),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rubik Regular'
                ),)
              ],
            ),


          ],
        ),

        SizedBox(height: 20,),

        Text("Login ", style: TextStyle(
            fontSize: 30,
            color: Color(0xff151514),
            fontWeight: FontWeight.bold,
            fontFamily: 'Rubik Regular'
        ),),


        SizedBox(
           height: 20,
        ),

        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 26, right: 26),
          child: Text("Lorem ipum doctor srif amet,\n consecter testing tesxt view ", style: TextStyle(
              fontSize: 20,
              color: Color(0xffc7691d),
              fontWeight: FontWeight.bold,
              fontFamily: 'Rubik Regular'
          ),),
        ),

        SizedBox(
          height: 40,
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              filled: true,
              fillColor: Color(0xffF8F9FA),
              prefixIcon: Icon(Icons.email,color: Color(0xff323F48),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE47EB),),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE4e7eB),),
                  borderRadius: BorderRadius.circular(10),
                )
            ),


          ),
        ),

        SizedBox(
          height: 20,
        ),


        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Color(0xffF8F9FA),
                suffixIcon: Icon(Icons.visibility_off_outlined,color: Color(0xff323F48),),
                prefixIcon: Icon(Icons.lock,color: Color(0xff323F48),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffE47EB),),
                  borderRadius: BorderRadius.circular(10),
                ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE4e7eB),),
                borderRadius: BorderRadius.circular(10),
              )
            ),

          ),
        ),


        SizedBox(
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0),
          child:  Column(
          children: [

            Container(
                width: double.infinity,
                child: ElevatedButton(
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(
                         Colors.amber[400]!),
                   ),
                  child: Text("LOG-IN", style: TextStyle(
                    color: Color(0xff000000),
                    fontSize: 20,
                  ),),
                  onPressed: (){},
                ),

            ),

            Row(
              children: [


                Text("Don't hvae any account ? ", style: TextStyle(

                ),),



              ],
            )


          ],
        ), ),


      ],
    ),
  ),
),
    );
  }
}
