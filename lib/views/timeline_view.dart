

import 'package:familicious/create_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:unicons/unicons.dart';


class TimelineView extends StatelessWidget {
  const TimelineView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timeline'),
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CreatePost();
            }));
          },
          icon: Icon(
            UniconsLine.plus_square,
          color: Theme.of(context).iconTheme.color,),)],
      ),
      body: ListView(
        children: [
          Card(
            color: Theme.of(context).cardColor,
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.all(5),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1638913662252-70efce1e60a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      radius: 30,
                    ),
                    title: Text(
                      'Marthins',
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 13,fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '1 minute ago',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize: 16,color: Colors.grey,
                        ),
                        ),
                        trailing: Icon(Icons.more_horiz,color: Theme.of(context).iconTheme.color),
                  ),
                  Text(
                    'This is a Photo something',
                    textAlign: TextAlign.left,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
                      width: MediaQuery.of(context).size.width,
                      height: 180,
                      fit: BoxFit.cover,),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              UniconsLine.thumbs_up,
                            color: Theme.of(context).iconTheme.color,
                            ),
                            Icon(UniconsLine.comment_lines,
                            color: Theme.of(context).iconTheme.color,
                            ),
                             Icon(
                              UniconsLine.telegram_alt,
                              color: Theme.of(context).iconTheme.color,
                              ),
                              const SizedBox(
                               width: 5,
                              ),
                              
                          ],
                        )
                      ],
                    )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}