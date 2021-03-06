import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State createState() => new HomePageState();
  
}

class HomePageState extends State<HomePage> {
  

  var num1=0, num2=0, sum=0;

  final TextEditingController  t1 = new TextEditingController(text:"0");
  final TextEditingController  t2 = new TextEditingController(text:"0");

  void doAddition(){
   setState(() {
     num1 =int.parse(t1.text);
     num2 =int.parse(t2.text);
     sum =num1+num2;
   }); 
  }

  void doSub(){
   setState(() {
     num1 =int.parse(t1.text);
     num2 =int.parse(t2.text);
     sum =num1-num2;
   }); 
  }

  void doMul(){
   setState(() {
     num1 =int.parse(t1.text);
     num2 =int.parse(t2.text);
     sum =num1*num2;
   }); 
  }

  void doDiv(){
   setState(() {
     num1 =int.parse(t1.text);
     num2 =int.parse(t2.text);
     sum =(num1/num2).toInt();
   }); 
  }

  @override
  Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: new Text("Calculator"),
        ),
        body: new Container(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Output: $sum",style: TextStyle(
                fontSize: 20.0, color: Colors.purple
              ),),
              new TextField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter a number"
                ),
              ),
              new TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter another number"
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                   child: Text("+"),
                    onPressed: doAddition,
                  ),
                  RaisedButton(
                   child: Text("-"),
                    onPressed: doSub,
                  ),
                ],
              ),             
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                   child: Text("*"),
                    onPressed: doMul,
                  ),
                  RaisedButton(
                   child: Text("/"),
                    onPressed: doDiv,
                  ),
                ],
              )
            ],
          ),
        ),
      );
  }

}