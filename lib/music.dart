import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({super.key});

  @override
  State<MusicApp> createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {

  var items = [
         SalomonBottomBarItem(icon: Icon(Icons.home), title: Text("Home"),selectedColor: Colors.indigoAccent),
   SalomonBottomBarItem(icon: Icon(Icons.favorite), title:Text("favourite")
     ),
           SalomonBottomBarItem(icon: Icon(Icons.music_note_sharp), title: Text("music"),
           selectedColor: Colors.blue),
   SalomonBottomBarItem(icon: Icon(Icons.settings), title:Text("settings"),
   selectedColor: Colors.indigoAccent
     ),
 ];

int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(items: items,
      backgroundColor: Colors.blueGrey,
      currentIndex: currentindex,
      onTap: (index) => setState(() {
        currentindex = index;
      }),
      ),
    );
  }
}