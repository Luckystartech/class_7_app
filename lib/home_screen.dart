import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('My First App'),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.person),
          ),
        ],
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16,),
        child: Column(children: [
          const Text('Heading 1',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          FilledButton(
            onPressed: () {
              print('I was clicked');
            },
            style: FilledButton.styleFrom(
              backgroundColor: Colors.yellow,
              foregroundColor: Colors.black
            ),
            child: const Text('Submit'),
        
          ),
        const SizedBox(height: 20,),
           Container(
            padding: const EdgeInsets.all(16),
            decoration:  BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(16)
            ),
            child:  Column(
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Column(children: [
                  Text('Heading 1'),
                  Text('Heading 2'),
                ],),
                Image.asset('assets/images/image_1.jpg', width: 200)
              ],),
              const SizedBox(height: 20,),
              FilledButton(onPressed: (){}, child: const Text('Submit'),),
            ],))
        ]),
      ),
    );
  }
}
