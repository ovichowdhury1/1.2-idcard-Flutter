import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';


class Idcard extends StatefulWidget {
  @override
  _IdcardState createState() => _IdcardState();
}

class _IdcardState extends State<Idcard> {
  void customLauncher(command) async{
    if(await canLaunch(command)){
      launch(command);
    }
    else{
      print("Fail to Launch");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
          appBar: AppBar(
            title: Text("Ovi Chowdhury"),
          ),

         body: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/ovi.png"),
                      backgroundColor: Colors.white,
                      radius: 50,
                    ),
                    SizedBox(height: 10,),
                    Text("Ovi Chowdhury",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold ,
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text("Softawre Engineer",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 100,right: 100),
                      child: Divider(
                        thickness: 1,
                        color: Colors.white,

                      ),
                    ),

                    GestureDetector(
                      onTap: (){
                            customLauncher("tel: 01763855487");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height:60,
                        width:320 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(Icons.call,
                              size: 30,
                              ),
                               SizedBox(width: 10,),
                              Text("+880 176 385 5487",
                                   style: TextStyle(
                                     fontSize: 20,
                                     color: Colors.black ,
                                   ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                   SizedBox(height: 20,),
                    
                    GestureDetector(
                      onTap: (){
                        customLauncher("mailto: ovichowdhury13191@gmail.com");
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height:60,
                        width:320 ,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Icon(Icons.mail,
                                size: 30,
                              ),
                              SizedBox(width: 10,),
                              Text("ovichowdhury@gmail.com",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black ,
                                ),
                              ),
                            ],
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
