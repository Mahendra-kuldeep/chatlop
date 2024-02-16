import 'package:chatlop/widget/myWidgets.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key});

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  TextEditingController messageController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      body: Stack(
        children:[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black54,
                Colors.indigo
              ],begin: Alignment.topLeft,end: Alignment.bottomRight),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 22,
                    child:const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.white,),
                  ),
                  const SizedBox(width: 30,),
                  CircleAvatar(
                    radius: 25,
                   child: Icon(Icons.person,color: Colors.white,),
                  ),
                  const SizedBox(width: 13,),
                  Container(
                    width: 290,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Maxx",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.white),),
                        Text("Online",style: TextStyle(color:Colors.grey),),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.black,
                    child: Icon(Icons.more_vert,color: Colors.white,),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius:const BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))
              ),
              child: Column(
                children: [
                  Expanded(
                      child: ListView()),
                  Stack(
                      children:[ Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
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
                                  controller: messageController,
                                  cursorColor: Colors.deepPurple,
                                  style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 17),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "type message",
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                        Positioned(
                          top: 14.5,
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
                  )
                ],
              ),
            ),
          )
        ]
      )
    );
  }
}
