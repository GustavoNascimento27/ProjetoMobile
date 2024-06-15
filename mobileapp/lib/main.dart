import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Scaffold(
      appBar: AppBar( centerTitle: true, backgroundColor: Colors.green,
      title: const Text('PescaFish', style: TextStyle(
    color: Colors.white
  ),),
      
      ),
    body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fundoum.jpg'), // Change the path to your image file
              fit: BoxFit.cover, // Adjust the image's fit as needed
            ),
          ),
          
       
     
     )
     ) );
  }
}
