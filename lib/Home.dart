import 'package:assignment/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerWidget{
  const Home({super.key});

   @override
  Widget build(BuildContext context,WidgetRef ref) {
     int counter = ref.watch(counterProviderData);
    // TODO: implement build
    return Scaffold(
      body: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 30,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(side:BorderSide(style: BorderStyle.solid,width: 3,color: Colors.yellow,)),
            onPressed: (){
            ref.watch(counterProviderData.notifier).increament();
           // ref.read(counterProviderData).Notifier.increament();
          },icon: Icon(Icons.add),label: Text("add"), ),
          const SizedBox(width: 30,),
          Text("$counter"),
          SizedBox(width: 30,),
          ElevatedButton.icon(style:ElevatedButton.styleFrom(
            side:const  BorderSide(style: BorderStyle.solid,width: 3,color: Colors.yellow,),
          ),onPressed: (){
            ref.watch(counterProviderData.notifier).decreament();
          },icon: Icon(Icons.exposure_minus_1),label: Text("decrement"), ),
          SizedBox(width: 30,),
        ],
      ),),
    );
  }
}