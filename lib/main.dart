import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Animal Sounds'),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Text('Tap on the picture',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30.0
                  ),),
              ),
              // ONE BUTTON
                  TextButton(onPressed: (){
                    final player = AudioCache();
                    player.play('cat.mp3');
                  },
                      child:
                         Image.asset('images/cat.png'),
                      ),
              Text('A Cat',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0
                ),),
              Divider(
                color: Colors.black,
                indent: 30.0,
                endIndent: 30.0,
              ),

              // TWO BUTTON
              TextButton(onPressed: (){
                final player = AudioCache();
                player.play('dog.mp3');
              },
                child:
                Image.asset('images/dog.png'),
              ),
              Text('A Dog',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0
                ),),
              Divider(
                color: Colors.black,
                indent: 30.0,
                endIndent: 30.0,
              ),

//THREE BUTTON
              TextButton(onPressed: (){
                final player = AudioCache();
                player.play('cow.mp3');
              },
                child:
                Image.asset('images/cow.png'),
              ),
              Text('A Cow',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0
                ),),
              Divider(
                color: Colors.black,
                indent: 30.0,
                endIndent: 30.0,
              ),

              // FOUR BUTTON
              TextButton(onPressed: (){
                final player = AudioCache();
                player.play('crow.mp3');
              },
                child:
                Image.asset('images/crow.png'),
              ),
              Text('A Crow',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0
                ),),
              Divider(
                color: Colors.black,
                indent: 30.0,
                endIndent: 30.0,
              ),

              //FIVE BUTTON
              TextButton(onPressed: (){
                final player = AudioCache();
                player.play('rabbit.mp3');
              },
                child:
                Image.asset('images/rabbit.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('A Rabbit',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0
                ),),
              ),

            ],
          )
              ],
      ),
      ),

    );
  }
}
