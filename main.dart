import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 249, 253),
          appBar: AppBar(
              title: Text("Currency Conveter"),
              actions: [Icon(Icons.more_vert)],
              backgroundColor: Colors.blueGrey),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.network(
                  'https://blog.jeton.com/wp-content/uploads/2020/05/currency-symbols1.png',
                ),
                Text(
                  "Converter App",
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Enter a Number",
                    hintText: "Enter a Number",
                    icon: Icon(Icons.monetization_on_sharp , color:Colors.black,),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
