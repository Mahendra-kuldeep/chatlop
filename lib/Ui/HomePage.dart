import 'package:chatlop/Ui/chatRoom.dart';
import 'package:chatlop/widget/helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade900,
      body: Stack(
        children: [
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
           const  SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Messages",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                  IconButton(onPressed: (){}, icon:const  Icon(Icons.search,color: Colors.white,))
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text("Recents",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            const SizedBox(height: 10,),          Container(
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade900
                ),
                child: Expanded(
                  child: ListView.builder(scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                    if(index==0){
                     return Padding(
                       padding: const EdgeInsets.only(top: 15),
                       child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 28,
                                  backgroundColor: Colors.teal,
                                  child: CircleAvatar(
                                    radius: 26,
                                    child: IconButton(onPressed: (){}, icon:const Icon(Icons.add,size: 30,),)
                                  ),
                                ),
                               const SizedBox(height: 5,),
                               const Text("You",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.teal),)
                              ],
                            ),
                          ),
                        ),
                     );
                    }
                    return Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 28,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 26,
                                  backgroundImage: NetworkImage("${usersArr[index]["imageUrl"]}"),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Text("${usersArr[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    );

                  },itemCount: usersArr.length,),
                ),
              ),
            )
          ],
        ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                color: Color.fromRGBO(52, 54, 65, 1),
              ),
              child: ListView.builder(itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Get.to(ChatRoom());
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage("${usersArr[index]["imageUrl"]}"),
                    ),
                    title: Text("${usersArr[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    subtitle: Text("Hello",style: TextStyle(color: Colors.white),),
                  ),
                );
              },itemCount: usersArr.length,),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: CircleAvatar(
              radius: 29,
              backgroundColor: Colors.teal,
              child: Icon(Icons.co_present,color: Colors.white,),
            ),
          )
        ]
      ),
    );
  }
}
