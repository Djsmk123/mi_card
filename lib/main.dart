import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
void main(){
  runApp(const MiCard());
}
class MiCard extends StatelessWidget {
  const MiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //profile image link
    //"https://www.aceorganicchem.com/blog/wp-content/uploads/2020/02/bitmoji-300x300.jpeg"
    return MaterialApp(
      title: "MI Card",
      home: SafeArea(
        child: Scaffold(
          //background Color of scaffold widget
          backgroundColor:Colors.blueAccent.shade700,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/image.jpeg"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("MD MOBIN",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: "Dancing_Script"
                ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text("Flutter Developer",style: TextStyle(
                  color: Colors.grey.shade300,
                  fontSize: 20
                ),),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 50,right: 50,bottom: 10),
                child: Divider(height: 1,thickness: 1,color: Colors.white,),
              ),
              GestureDetector(
                onTap: (){
                  launch("tel://+91966704XXX");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                       Expanded(
                         child: ListTile(
                           leading:  Icon(Icons.call),
                           title:Text("+91 966704194XX") ,
                         ),
                       )

                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: (){
                    launch("mailto://FlutterDevloper@adgtim.com");
                  },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: ListTile(
                            leading:  Icon(Icons.email),
                            title:Text("FlutterDevloper@adgtim.com") ,
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  launch("https://twitter.com/smk_winner");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: ListTile(
                            leading: Icon(FontAwesomeIcons.twitter) ,
                            title:Text("@Smk_Winner") ,
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  launch("https://github.com/djsmk123");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Expanded(
                          child: ListTile(
                            leading:  Icon(FontAwesomeIcons.github),
                            title:Text("DJsmk123") ,
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
