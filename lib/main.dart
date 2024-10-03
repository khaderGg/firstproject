import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 105,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                "image/1.jpeg",
              ),
            ),
          ),
          const Text(
            "khader developer",
            style: TextStyle(fontSize: 22, fontFamily: 'Roboto Slab'),
          ),
          Text(
            "Flutter developer",
            style: TextStyle(fontSize: 16, fontFamily: 'Roboto Slab'),
          ),
          const Divider(height: 50, thickness: 1,color: Colors.black,indent: 70,endIndent: 70),
          Padding(
            padding: EdgeInsets.all(24),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    label: Icon(Icons.phone, size: 30),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "password",

                  label: Icon(Icons.no_encryption_gmailerrorred_sharp,size: 25,),
                    // contentPadding: EdgeInsets.symmetric(vertical: 40),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
