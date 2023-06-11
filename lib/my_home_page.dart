import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String value = "Not Assign";
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.green.withOpacity(0.3),
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment: value=="LEFT"?Alignment.centerLeft
                      :value=="RIGHT"?Alignment.centerRight
                      :value=="UP"?Alignment.topCenter
                      :value=="DOWN"?Alignment.bottomCenter:Alignment.topCenter,
                      duration: const Duration(seconds: 4),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 4),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          color: value =="LEFT"?Colors.red
                              :value=="RIGHT"?Colors.blue
                              :value=="UP"?Colors.green
                              :value=="DOWN"?Colors.amber:Colors.purpleAccent,
                          borderRadius: BorderRadius.all(Radius.circular(value =="LEFT"?10
                              :value=="RIGHT"?60
                              :value=="UP"?10
                              :value=="DOWN"?60:0))
                        ),
                      )
                    )
                  ],
                ),
              )
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        value = "LEFT";
                      });
                    },
                    child: Text("LEFT",style: TextStyle(color: Colors.white),),
                    color: Colors.purple,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            value = "UP";
                          });
                        },
                        child: Text("UP",style: TextStyle(color: Colors.white),),
                        color: Colors.purple,
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            value = "DOWN";
                          });
                        },
                        child: Text("DOWN",style: TextStyle(color: Colors.white),),
                        color: Colors.purple,
                      ),
                    ],
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        value = "RIGHT";
                      });
                    },
                    child: Text("RIGHT",style: TextStyle(color: Colors.white),),
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
