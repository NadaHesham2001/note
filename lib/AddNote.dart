import 'package:flutter/material.dart';
import 'package:note/HomePage.dart';

class AddNote extends StatelessWidget{
  var _title = new TextEditingController();
  var _content = new TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        actions: [
          FlatButton(
              onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()));
              },
              child: Text(
                  'Save',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
          )
        ],
      ),
      body: Container(

        margin: EdgeInsets.symmetric(horizontal: 20 ,vertical: 10),
        child: Column(
          children: [
            //title
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border:Border.all(
                    width: 2,
                    color: Colors.grey
                  ),
               color: Colors.grey[100]
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller:_title,
                  decoration: InputDecoration(
                      hintText: 'Title',
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            //content
            Expanded(
              child: Container(

                decoration: BoxDecoration(
                    border:Border.all(
                      width: 2,
                        color: Colors.grey
                    ),
                    color: Colors.grey[100]
                ),
                child: TextField(
                  controller: _content,
                  maxLines: null,
                  decoration: InputDecoration(
                    hintText: 'Content',
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

}