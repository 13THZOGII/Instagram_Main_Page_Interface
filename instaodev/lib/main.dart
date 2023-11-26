import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(width: double.infinity, height:60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Image.asset("assets/image/insta1.png"),
                  ),
                  Row (
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.add_circle,color: Colors.black87,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite,color: Colors.black87,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 8,bottom: 8, right: 20),
                        child: Icon(Icons.send,color: Colors.black87,),
                      ),],)
                ],
              ),),
            Expanded(
                child: SingleChildScrollView(
                  child: Container(
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                StoryWidget(),
                                StoryWidget2(),
                                StoryWidget3(),
                                StoryWidget4(),
                                StoryWidget5(),
                                StoryWidget6(),
                              ],
                            ),
                          ),
                          Postitem(),
                          Postitem2(),
                          Postitem3(),
                          Postitem4(),
                        ],
                      ),color: Colors.white),
                )
            ),
            Container(
                width: double.infinity,
                height:60,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black12
                  )
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.home, size: 32, color: Colors.black87,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.search, size: 32, color: Colors.black87,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.smart_display, size: 32, color: Colors.black87,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.favorite, size: 32, color: Colors.black87,),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Icon(Icons.person, size: 32, color: Colors.black87,),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }




Container Postitem() => Container(
  child: Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/6.jpg"),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Adem Gökdemir", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("İstanbul", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
        ),
      ),
      Image.asset("assets/image/manzara1.jpg"),
      Likebox(),
      commentbox(),
      commentbox2()
    ],
  ),
);

Container Postitem2() => Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/7.jpg"),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gökçen Dörterler", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Malatya", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Image.asset("assets/image/malatya.jpg"),
        Likebox(),
        commentbox(),
        commentbox2()
      ],
    ),
  );

Container Postitem3() => Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/9.jpg"),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sena Bezirkan", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Trabzon", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Image.asset("assets/image/trabzon.jpg"),
        Likebox(),
        commentbox(),
        commentbox2()
      ],
    ),
  );

Container Postitem4() => Container(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/image/10.jpg"),
                    radius: 20,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Ali Haluk Dinçer", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                      Text("Antalya", style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),)
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Image.asset("assets/image/antalya.jpg"),
        Likebox(),
        commentbox(),
        commentbox2()
      ],
    ),
  );

Padding Likebox() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87,),
              SizedBox(width: 9,),
              Icon(Icons.comment_bank_outlined, color: Colors.black87),
            ],
          ),
          SizedBox(width: 9,),
          Icon(Icons.flag_circle_outlined, color: Colors.black87),
      ],),
    );
}

Padding commentbox() {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row (
        children: [
          Text("Şehmus Karan", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
          SizedBox(width: 5,),
          Text("Çok Güzel Fotoğraf!", style: TextStyle(color: Colors.black54, fontSize: 15),)
        ],
      ),
    );
}

Padding commentbox2() {
    return Padding(
      padding: const EdgeInsets.only(left: 8,top: 2),
      child: Row (
        children: [
          Text("Fulya Özger", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),),
          SizedBox(width: 5,),
          Text("Elinize Sağlık Gerçekten Güzel Fotoğraf!", style: TextStyle(color: Colors.black54, fontSize: 15),)
        ],
      ),
    );
  }

Widget StoryWidget() {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
            ),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/image/1.jpg"),
              radius: 40,
             ),
          ),
           SizedBox(height: 5,),
           Text("Meltem_Okant", style: TextStyle(fontSize: 12),)
        ],
      ),
    );
  }
}
Widget StoryWidget2() {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/2.jpg"),
            radius: 40,
          ),
        ),
        SizedBox(height: 5,),
        Text("Ayşe_Tire", style: TextStyle(fontSize: 12),)
      ],
    ),
  );
}

Widget StoryWidget3() {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/3.jpg"),
            radius: 40,
          ),
        ),
        SizedBox(height: 5,),
        Text("Zehra_Güneş", style: TextStyle(fontSize: 12),)
      ],
    ),
  );
}

Widget StoryWidget4() {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/4.jpg"),
            radius: 40,
          ),
        ),
        SizedBox(height: 5,),
        Text("Murat_Kaya", style: TextStyle(fontSize: 12),)
      ],
    ),
  );
}

Widget StoryWidget5() {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/5.jpg"),
            radius: 40,
          ),
        ),
        SizedBox(height: 5,),
        Text("Berke_Coşkun", style: TextStyle(fontSize: 12),)
      ],
    ),
  );
}

Widget StoryWidget6() {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              color: Colors.green,
              gradient: LinearGradient(colors: [
                Colors.purple,
                Colors.orange
              ]
              ),
              shape: BoxShape.circle
          ),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/6.jpg"),
            radius: 40,
          ),
        ),
        SizedBox(height: 5,),
        Text("Mert_Demir", style: TextStyle(fontSize: 12),)
      ],
    ),
  );
}
