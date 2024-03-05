import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/watch.png"),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: Colors.yellowAccent, width: 5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rolex 150",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Text(
                            "This functional bezel – which allows the wearer to calculate, for example, the sailing time between two buoys – is also a key component in the model’s distinctive visual identity.This functional bezel – which allows the wearer to calculate, for example, the sailing time between two buoys – is also a key component in the model’s distinctive visual identity.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 5,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 500",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: -20,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.add),
                          ),
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
