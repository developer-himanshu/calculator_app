import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {


  const HomePage({super.key});

  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

var num1=0 , num2=0 , sum=0;
 final t1= TextEditingController(text: "0");
 final t2= TextEditingController(text: "0");
 
void doaddition(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1+num2;
  });}

  void doSubt(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1-num2;
  });}

void doMul(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1*num2;
  });}

void doDiv(){
  setState(() {
    num1=int.parse(t1.text);
    num2=int.parse(t2.text);
    sum=num1 ~/ num2;
  });}

void doclear(){
  setState(() {

    t1.text="0";
    t2.text="0";
    sum=0;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Center(
          child: Text("Calculator"),) 
      ),
      body: Padding(
        padding:const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'output : $sum',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),),
       TextField(
      controller: t1,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: "Enter Number 1",
        
          
        ),
      ),
      
       TextField(
        controller: t2,
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
          hintText: "Enter Number 2",
          
        ),
      ),
     const Padding(padding: EdgeInsets.only(top: 20.0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          
          ElevatedButton(onPressed:doaddition,
           child:const Text("+"),
           ),
           const SizedBox(width: 16), 
            ElevatedButton(onPressed:doSubt,
           child:const Text("-"),
           ),
           const SizedBox(width: 16), 
            ElevatedButton(onPressed:doMul,
           child:const Text("*"),
           ),
           const SizedBox(width: 16), 
            ElevatedButton(onPressed:doDiv,
           child:const Text("/"),
           ),
        ],
        
      ),
           const Padding(padding: EdgeInsets.only(top: 20.0),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed:doclear,
           child:const Text("clear"),
           ),
        ],
      )
      
        ]),
      )
    );
  }
}
