import 'package:unicons/unicons.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: const Text(
              'Timeline',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            actions: [
              Icon(
                Icons.add_a_photo,
              )
            ]),
        body: ListView(padding: EdgeInsets.all(16), children: [
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1542740348-39501cd6e2b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(' Ama Mariama',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      Text('i minute ago'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.more,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'This is my first visit to japan on a plane',
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1596464148416-e0916276a9f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.thumb_up),
                        Icon(Icons.message),
                      ],
                    ),
                    Icon(Icons.facebook),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://images.unsplash.com/photo-1598527901414-3e9d8ecec353?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(' Ama Mariama',
                          style: TextStyle(color: Colors.black, fontSize: 18)),
                      Text('i minute ago'),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.more,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'This is my first visit to japan on a plane',
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(11),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1443632864897-14973fa006cf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                    width: MediaQuery.of(context).size.width,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up),
                  Icon(Icons.message),
                ],
              ),
              Icon(Icons.facebook),
            ],
          )
        ]));
  }
}
