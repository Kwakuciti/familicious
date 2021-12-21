
import 'package:familicious/create_post.dart';
import 'package:familicious/views/chart_view.dart';
import 'package:familicious/views/favourite_view.dart';
import 'package:familicious/views/profile_view.dart';
import 'package:familicious/views/timeline_view.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';


class Inddex extends StatefulWidget {
  const Inddex({ Key? key }) : super(key: key);

  @override
  _InddexState createState() => _InddexState();
}

class _InddexState extends State<Inddex> {
int _currentIndex = 0;


final List<Widget> _views = [  
  TimelineView(),
  ChartView(),
  FavouriteView(),
  ProfileView(),
  CreatePost(),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _views,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor:  Colors.white,
        type:  BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        showUnselectedLabels: false,
        items:  [
          BottomNavigationBarItem(icon: Icon(UniconsLine.history),label: "Timeline"),
          BottomNavigationBarItem(
            icon: Icon(
              UniconsLine.comment_dots),
              label: 'charts'),
              BottomNavigationBarItem(icon: Icon(UniconsLine.heart),label: 'favourute'),
              BottomNavigationBarItem(icon: Icon(UniconsLine.user),label: 'Profile')
        ],
      
      ),
      
      
    );
  }
}