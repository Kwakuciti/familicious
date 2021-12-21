import 'package:flutter/material.dart';
import 'package:familicious/create_post.dart';
import 'package:unicons/unicons.dart';


class CreatePost extends StatelessWidget {
  const CreatePost({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create new Post ',
        style: Theme.of(context).appBarTheme.titleTextStyle,),
        actions: [TextButton(onPressed: () {}, child: const Text('Submit'),)],
      ),
      body:  ListView(
        children: [
          Text('select picture',),
           const SizedBox(height: 8,
          ),

          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context){
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton.icon(onPressed: () {},
                     icon: Icon(UniconsLine.camera),
                      label: Text('Select from Camera')),
                      const Divider(),
                      TextButton.icon(onPressed: () {},
                       icon: Icon(UniconsLine.picture),
                        label: Text('Select from gallery'))
                  ],
                );
              });
            },
            child: Image.network('https://i.pinimg.com/564x/41/7f/16/417f163906fc4d42f8e8af681894d05f.jpg',
            height: 200,
            width: MediaQuery.of(context).size.width,),
          )
        ],
      ),
    );
  }
}