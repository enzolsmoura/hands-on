import 'package:flutter/material.dart';

class TelaHandsOn extends StatelessWidget {
  const TelaHandsOn({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(125,96,161,1),
          title: const Text("Home Page"),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top:60),
              child: Align(
                alignment: Alignment.center,
                child: Text("Every Purchase Will be Made With Pleasure", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: Text("Buy and Enjoy"),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print("Start Shopping");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(125,96,161,1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text("Start Shopping"),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print("Learn More");
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(125,96,161,1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ), 
                    child: const Text("Learn More", style: TextStyle(color: Colors.black))),
                  OutlinedButton(
                    onPressed: () {
                      print("Login");
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(
                        width: 1,
                        color: Color.fromRGBO(125,96,161,1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ), 
                    child: const Text("Login", style: TextStyle(color: Colors.black))),  
                ],
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {
                    print("Home");
                  },
                  backgroundColor: const Color.fromRGBO(125,96,161,1),
                  child: const Icon(Icons.home)),
              )
            
          ],
        ),
      ),
    );
  }
}