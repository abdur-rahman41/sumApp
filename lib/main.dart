

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:sumapp/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Sum App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return MyHomePageUI();
  }


}

class MyHomePageUI extends State<MyHomePage>
{

  Map<String,int>Formvalue={
    "Num1":0,
    "Num2":0,
    "Num3":0

};
  int sum=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    MyInputOnChange(InputKey,InputValue )
    {
       setState(() {
         Formvalue.update(InputKey, (value) => int.parse(InputValue));
       });


    }
    AddAllNumber() {
      setState(() {

        sum = Formvalue['Num1']!+Formvalue['Num2']!+Formvalue['Num3']!;
      });
    }
          return Scaffold(
            appBar: AppBar(
                title:Text("Sum"),
            ),
            body: Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                            Text(sum.toString(),style:HeadTextStyle()),
                            SizedBox(height: 20,),
                            TextFormField(
                              onChanged: (value){
                                MyInputOnChange("Num1", value);
                              },
                              decoration: AppInputStyle("First Number"),
                            ),
                            SizedBox(height: 20,),
                            TextFormField(
                              onChanged: (value)
                              {
                                MyInputOnChange("Num2", value);
                              },
                                decoration: AppInputStyle("Second Number"),
                            ),
                        SizedBox(height: 20,),
                        TextFormField(
                          onChanged: (value)
                          {
                            MyInputOnChange("Num3", value);
                          },
                          decoration: AppInputStyle("Third Number"),
                        ),
                            SizedBox(height: 20,),
                            Container(
                                    child: ElevatedButton(
                                      style: AppButtonStyle(),
                                        child: Text("Add"),
                                        onPressed: (){

                                                        AddAllNumber();
                                        },
                                    ),
                            )


                      ],
                ),
            ),
          );
  }

}


