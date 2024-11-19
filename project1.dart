import 'package:flutter/material.dart';
import 'package:flutter_polygon/flutter_polygon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

var kuning=Color(0xfff6cd24);
var biru=Color.fromARGB(255, 0, 26, 255);
var hijau=Color.fromARGB(255, 25, 170, 9);
var merah=Color.fromARGB(255, 255, 0, 0);
var coklat=Color.fromARGB(255, 96, 64, 0);
var hitam=Color(000000);

var coffelatte='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdd5pTuUi1jSGomACfGnSBmcU4I8fq2CtmZ5tFl6fXrAMOQKM5NPkVNVMQKrc1oJ6dWU8&usqp=CAU';
var matcha='https://cdn.rri.co.id/berita/Aceh_Singkil/o/1720822709335-kandungan-nutrisi-dan-khasiat-matcha-untuk-kesehatan-tubuh/0v07pnqdo8j4044.jpeg';
var hotdog='https://cdn1-production-images-kly.akamaized.net/SQ3_i0TaxR3iwt6G07nC4YHWVCY=/0x0:1000x563/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/4019064/original/079301900_1652242455-shutterstock_348271130.jpg';
var ayamtepung='https://cdn1-production-images-kly.akamaized.net/FPf-OJhZ5fzW3sOnBjQqaH9ktO8=/1x59:1000x622/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3957954/original/090265500_1646877037-shutterstock_460012054.jpg';
var bakpao='https://asset.kompas.com/crops/vKyqVzeos-WoxmNq5ZBFVizFgAQ=/0x518:667x962/1200x800/data/photo/2020/10/01/5f75fa06a78fb.jpg';

void main() {
  runApp(const Projek1());
}

class Projek1 extends StatelessWidget {
  const Projek1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Projek 1",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyNavbar(),
      body: Container(child: ListView(children: [
SizedBox(
  height: 16.0,
),
MyAppBar(),
SizedBox(
  height: 16,
),
FoodListView(),
Selecttypesection(),
Menuitemlist(),
      ],
      ),),
    );
  }
}

class MyActionButton extends StatelessWidget {
  const MyActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,

child: ClipPolygon(sides: 1000,

child: Container(
color: Colors.brown,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(FontAwesomeIcons.book,color: Colors.white,),
    SizedBox(
      height: 4.0,
    ),
    Text('Menu',
    style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.white),
    ),
  ],
),
),

),    
    );
  }
}

class MyNavbar extends StatelessWidget {
  const MyNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 80.0,
      child: Padding(padding: EdgeInsets.only(top: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Icon(Icons.home),
              Text("Home",style: TextStyle(fontSize: 12.0),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.search),
              Text("search",style: TextStyle(fontSize: 12.0),),
            ],
          ),
          Container(
            width: 100,
          ),
          Column(
            children: [
              Icon(Icons.shop),
              Text("Buy",style: TextStyle(fontSize: 12.0),),
            ],
          ),
          Column(
            children: [
              Icon(Icons.shopping_cart),
              Text("Check Out",style: TextStyle(fontSize: 12.0),),
            ],
          ),
        ],
      ),
      ),
    );
  }
}
class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.grid_on,color: Colors.brown,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Lokasi",style: TextStyle(color: Colors.black),
              ),
              Text("Kota Palembang",style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Container(
        height: 160.0,
        child: ListView(scrollDirection: Axis.horizontal,
        children: [
          CoffeLatte(),
          Matcha(),
          Ayamtepung(),
          Bakpao(),
          Hotdog(),
        ],
        ),
      ),
    );
  }
}

class CoffeLatte extends StatelessWidget {
  const CoffeLatte({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(height: 160,width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(coffelatte),),),
      child: Stack(children: [
        Container(
          height: 160,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
        ),
        Padding(padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Spacer(),
            Text("15% Diskon",style: TextStyle(color: kuning,fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1.1),),
            Text("Minimal Pembelian 20 K",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: 1.1),),
          ],
        ),
        ),
      ],),
      ),
    );
  }
}

class Matcha extends StatelessWidget {
  const Matcha({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(height: 160,width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(matcha),),),
      child: Stack(children: [
        Container(
          height: 160,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
        ),
        Padding(padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Spacer(),
            Text("20% Diskon",style: TextStyle(color: kuning,fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1.1),),
            Text("Minimal Pembelian 10 K",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: 1.1),),
          ],
        ),
        ),
      ],),
      ),
    );
  }
}

class Ayamtepung extends StatelessWidget {
  const Ayamtepung({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(height: 160,width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(ayamtepung),),),
      child: Stack(children: [
        Container(
          height: 160,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
        ),
        Padding(padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Spacer(),
            Text("25% Diskon",style: TextStyle(color: kuning,fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1.1),),
            Text("Minimal Pembelian 30 K",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: 1.1),),
          ],
        ),
        ),
      ],),
      ),
    );
  }
}

class Bakpao extends StatelessWidget {
  const Bakpao({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(height: 160,width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(bakpao),),),
      child: Stack(children: [
        Container(
          height: 160,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
        ),
        Padding(padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Spacer(),
            Text("15% Diskon",style: TextStyle(color: kuning,fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1.1),),
            Text("Minimal Pembelian 25 K",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: 1.1),),
          ],
        ),
        ),
      ],),
      ),
    );
  }
}

class Hotdog extends StatelessWidget {
  const Hotdog({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8),
      child: Container(height: 160,width: 300,
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(hotdog),),),
      child: Stack(children: [
        Container(
          height: 160,width: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black.withOpacity(0.1),Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),

          ),
        ),
        Padding(padding: EdgeInsets.all(6),
        child: Column(
          children: [
            Spacer(),
            Text("20% Diskon",style: TextStyle(color: kuning,fontWeight: FontWeight.bold,fontSize: 24,letterSpacing: 1.1),),
            Text("Minimal Pembelian 20 K",style: TextStyle(
              color: Colors.white,fontWeight: FontWeight.bold,fontSize: 14,letterSpacing: 1.1),),
          ],
        ),
        ),
      ],),
      ),
    );
  }
}
class Selecttypesection extends StatelessWidget {
  const Selecttypesection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: 
          Container(
            height: 95,
            width: 120,
            color: Colors.brown,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.starHalfAlt,color: Colors.white,),
                SizedBox(height: 4.0,),
                Text("Special Menu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

            ],),
          ),

        ),
        Container(
            height: 95,
            width: 120,
            color: Colors.brown,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.magnet,color: Colors.white,),
                SizedBox(height: 4.0,),
                Text("Special Menu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

            ],),
          ),
          Container(
            height: 95,
            width: 120,
            color: Colors.brown,
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(FontAwesomeIcons.golfBallTee,color: Colors.white,),
                SizedBox(height: 4.0,),
                Text("Special Menu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),

            ],),
          ),
      ],),
    );
  }
}
class Menuitemlist extends StatelessWidget {
  const Menuitemlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
Text("Popular Dishes",style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.w700 
),
),
      SizedBox(height: 16.0,),
        tempatmakan(),
        tempatmakan(),
        tempatmakan(),
        tempatmakan(),
        tempatmakan(),
        tempatmakan(),

      ],),
    );
  }
}

class tempatmakan extends StatelessWidget {
  const tempatmakan({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
height: 100.0,
width: 100.0,
child: Image.network(coffelatte,fit: BoxFit.cover,),
          ),
          SizedBox(width: 16.0,),
          Container(
child: Expanded(child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Container(
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadiusDirectional.circular(4.0),
      ),
      child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 4.0),
      child: Row(children: [
        Icon(Icons.star,size: 15,color: Colors.white,),
        Text("4,9",style: TextStyle(color: Colors.white),),
      ],),
      ),
    ),
    SizedBox(height: 8.0,),
    Text("Coffe Latte",style: TextStyle(fontWeight: FontWeight.bold),),
    Container(
      width: 200.0,
      child: Text("Coffe Latte Nikmat"),
    ),
  ],
)),
          ),
        ],
      ),
    );
  }
}
