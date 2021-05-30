
import 'package:flutter/material.dart';
import 'package:flutter_app/Samplepages.dart';

void main(){
    runApp(
    MaterialApp(
      title: "Bottom navigation",
      home: Bottom_menu(),
    )
    );
}
// ignore: camel_case_types
class Bottom_menu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Bottom_menu_state();
  }
}

// ignore: camel_case_types
class Bottom_menu_state extends State<Bottom_menu>{
  var _PagesData = [HomePage(),MenuPage(),NotificationPage()];
  int _selectedItem =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Bottom App Menu")),
      body: Center(
        child: _PagesData[_selectedItem],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        ],
        currentIndex: _selectedItem,
        onTap: (setValue){
          setState(() {
            _selectedItem = setValue;
          });
        }
      )
    );
  }
}