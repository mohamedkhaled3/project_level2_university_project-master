import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [ // we always use UserAccountsDrawerHeader() in drawer // use it to show header of drawer
   
   Column(children: [     
const UserAccountsDrawerHeader(  
                // to make background image "flower image"
              decoration : BoxDecoration(
                  image:  DecorationImage(image: AssetImage("assets/images/backgroundImage.jpg"),
                  fit: BoxFit.cover), //"fit: BoxFit.cover" -- to make max size can take 
              ),
              // to make text of accountName
              accountName: Text("mohamed khaled",style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
             // to make text of accountEmail
              accountEmail: Text("mk1644@fayoum.edu.eg",),
            //      
              currentAccountPictureSize : Size.square(72.0),
            // to make  CircleAvatar "circular image " or " profile image "     
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/images/do_it.jpeg"),
              ),      
           ),
           
 ListTile(   // ListTile is widget  we use it in past in "المشروع بتاع " WORLD TIME APP Title in center 
   title: const Text("Home"),  // Title in center 
   leading: const Icon(Icons.home), // leading in left 
   onTap: () { }
 ),
  
 ListTile(
   title: const Text("My products"),
   leading: const Icon(Icons.add_shopping_cart),
   onTap: () { }
 ),

 ListTile(
   title: const Text("About"),
   leading: const Icon(Icons.help_center),
   onTap: () { }
 ),

 ListTile(
   title: const Text("Logout"),
   leading: const Icon(Icons.exit_to_app),
   onTap: () { }
 ),
  
          ], ) ,
       
           Container(
            margin: const EdgeInsets.only(bottom: 22),
            child: const Text("developee by mohamed khaled ")),          
            ],
          ),
      
        ),
        appBar: AppBar(
          // leading: Text("rfff"), //////////////// remove icon of Drawer
          backgroundColor: const Color.fromARGB(255, 76, 141, 95),
          title: const Text("Home"),
          actions: [     // the end of AppBar  & "leading is start of AppBar"
            Row(
              children: [
                Stack(
                  children: [
                    Positioned( bottom: 22, 
                      child: Container(
                          child: const Text(
                            "8",
                            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 15 ),
                          ),
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text("\$ 128"),   //  \$ to make 128 not variable
                ),
                
              ],
            ),
            
          ],
           
        ),  
      ),
    );
  }
}