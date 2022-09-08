import 'package:flutter/material.dart';
import 'package:note/AddNote.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes=[
    'go to school    at 8:00 AM',
    'go to resturant at 2:00 pm ',
    'go to home at 6:00pm',
    'go to gym at 9:00 pm',
    'go to school    at 8:00 AM',
    'go to resturant at 2:00 pm ',
    'go to home at 6:00pm',
    'go to gym at 9:00 pm',
    'go to school    at 8:00 AM',
    'go to resturant at 2:00 pm ',
    'go to home at 6:00pm',
    'go to gym at 9:00 pm',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        title: Text(
            'Note App' ,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25
          ),
        ),

        
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.pink[200],
        child: Icon(Icons.add),
        onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (_)=> AddNote()));
        },
      ),
      body: GridView.builder(
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemCount:  notes.length,
          itemBuilder: (BuildContext context,index){

             return Container(
               margin: EdgeInsets.all(10),
               height: 150,
               color: Colors.grey[200],
               child: Center(
                 child: Text(
                   notes[index],
                   style: TextStyle(
                     fontWeight: FontWeight.bold,

                   ),
                 ),
               ),

             );
          }
      ),
    );
  }
}
