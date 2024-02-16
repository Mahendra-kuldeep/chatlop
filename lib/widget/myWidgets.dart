import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget chatRoomTr(BuildContext context,TextEditingController controller,String text){
  return Stack(
    children:[ Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Container(
        height: 57,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white.withOpacity(.8)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,),
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.deepPurple,
              style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: text,
              ),
            ),
          ),
        ),
      ),
    ),
      Positioned(
        top: 11,
        right: 13,
        child: Card(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.deepPurple,
            child: IconButton(onPressed: (){}, icon: Icon(Icons.send,color: Colors.white,size: 30,)),
          ),
        ),
      )
  ]
  );
}