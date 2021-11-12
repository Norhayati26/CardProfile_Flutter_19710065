import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new CardProfile(),
    routes: <String, WidgetBuilder>{
      'CardProfile': (BuildContext context) => new  CardProfile(),
      'DetailProfile': (BuildContext context) => new  DetailProfile(),
    },
  ));
} 
  

class CardProfile extends StatelessWidget {
  const CardProfile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('assets/img/view.jpg'),
            ),
            Text( 
              'NORHAYATI', 
              style: TextStyle(
                fontFamily: 'Golden Plains', 
                fontSize: 30.0,
                letterSpacing: 2.5,
                height: 2.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'Leahlee Sans',
                color: Colors.white,
                fontSize: 15.0,
                letterSpacing: 2.5,
                height: 2.0,
                fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 100.0,
              height: 40.0,
              ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.blue,
                  ),
                title: Text('+62 0853 4633 3506',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0,
                  ),),   
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: '+62 0853 4633 3506');
                },  
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.blue,
                  ),
                title: Text('Ayaanorhayati26@gmail.com',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0
                  ),),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: 'Ayaanorhayati26@gmail.com');
                },
                ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.blue, 
                  ),
                title: Text('19710065',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0
                  ),),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: '19710065');
                },
                ),),
            Card(
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.location_pin,
                  color: Colors.blue,
                  ),
                title: Text('Hulu Sungai Selatan, Kalimantan Selatan',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0
                  ),),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: 'Hulu Sungai Selatan, Kalimantan Selatan');
                },
                ),),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.cake,
                  color: Colors.blue,
                  ),
                title: Text('26-03-2001',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0
                  ),),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: '26-03-2001');
                },
                ),),
            Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(
                  Icons.bloodtype,
                  color: Colors.blue,
                  ),
                title: Text('O',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontSize: 20.0
                  ),),
                onTap: () {
                  Navigator.popAndPushNamed(context, 'DetailProfile', arguments: 'O');
                },
                ),),
          ], 
        ),
        ),
      ),
    );
  }
}

class DetailProfile extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
  final args = ModalRoute.of(context)!.settings.arguments;
     return new Scaffold(
             appBar: new AppBar(
        backgroundColor: Colors.blue,
        title: new Text('Detail Profile'),
        ),
      body: new SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ Center(
              child: Text( args.toString(),
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontFamily: 'Leahlee Sans',
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
              ),),        
              ),
              IconButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, 'CardProfile');
                },
                icon: Icon(Icons.exit_to_app_sharp, color: Colors.white)), 
          ], 
        ),
        
        ),
     );

  }
  
}