import 'dart:ui';

import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

String groupSimple='';
bool ischecked = false;
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lll"),

      ),
      body: Column
      (children: 
      [Text("TextFlold #1"),
      TextFormField(),
      Text("TextFlold #2"),
      TextFormField(
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
      ),
      TextField(
        decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        labelText: "username",
        hintText: "please enter username",
        hintStyle: TextStyle(color: Colors.grey)
        
      ),
      ),

      Text("Radio ListTiTle #1 Simple"),

        RadioListTile(
        title: Text('item title2'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title1',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),




         RadioListTile(
        title: Text('item title2'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title2',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),


          RadioListTile(
        tileColor: Colors.blue,
        activeColor: Colors.red,
        selectedTileColor: Colors.yellow,
        title: Text('item title3'),
        controlAffinity: ListTileControlAffinity.platform,
        value: 'item title3',
        groupValue: groupSimple,
        onChanged: (value) {
        setState(() {
        groupSimple = value!;
        });
        print(groupSimple);
        },
        ),



        Text(groupSimple),

      
      
       Text("Radio ListTiTle #2 class"),
       CheckboxListTile(
        title: Text("Libary"),
        value: ischecked, 
        onChanged: (value) {
         setState(() {
           ischecked = value!;
         }); 
        })
    
       

      
      
      
      
      ],
      
      
      )
      ,



    );
  }
}