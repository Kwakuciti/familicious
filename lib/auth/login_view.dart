import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Image.network('https://media.istockphoto.com/vectors/black-boy-cartoon-child-kid-thumbs-up-sign-vector-id1329679843?k=20&m=1329679843&s=612x612&w=0&h=kW6iXmodgGCt_jqHG8ecJmmENXLpokVR6tEzqI_usP8=',
            height: 140,
            width: 135,
            ),
            const SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(label: Text('Email')),
            ),
            const SizedBox(height: 15,),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              decoration: const InputDecoration(
                label: Text('Password'),
              ),
            ),
            const SizedBox(height: 15,
            ),Align(
              alignment: Alignment.centerLeft,
              child: TextButton(onPressed: () {},child: Text('Forget Password ',
              style: TextStyle(color: Colors.grey),
              )
              ),
           
            ),
            TextButton(
              onPressed: () {}, child:
               Text('Login',
               style: Theme.of(context).textTheme.bodyText1!.copyWith(color: Theme.of(context).buttonTheme.colorScheme!.primary),
            ),
            style: TextButton.styleFrom(backgroundColor: Theme.of(context).buttonTheme.colorScheme!.background),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child:  TextButton(
                onPressed: () {},
                child: const Text('Create Account',
                style: TextStyle(color: Colors.grey),),
                
              ),
            )
          ],
        ),
      )),
      
    );
  }
}