import 'package:flutter/material.dart';
import 'package:shop/page/home_page.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80, bottom: 40, top: 120),
            child: Image.asset("assets/icons/avocado.png"),
          ),
          const Padding(
            padding: EdgeInsets.all(24),
            child: Text("We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40
              ) ,
            ),
          ),
          const Text("Fresh items everyday"),

          const Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const HomePage();
              }));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.all(24),
              child: const Text("Get Strarted",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
