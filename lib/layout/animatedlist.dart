import 'package:flutter/material.dart';
import 'package:test1/shared/components/components.dart';

import '../shared/constants/constants.dart';

class AnimatedListScreen extends StatelessWidget {
  AnimatedListScreen({Key? key}) : super(key: key);

  GlobalKey<AnimatedListState> animateKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
            children: [
            FloatingActionButton(onPressed: () {
    var index = items.length;
    items.add('item${index + 1}');
    animateKey.currentState!.insertItem(index);
    }),
    Expanded(
    child: AnimatedList(
    key: animateKey,
    initialItemCount: items.length,
    itemBuilder: (context, index, animation) =>
    SizeTransition(
    sizeFactor: animation,
    child: animatedListItem(text: items[index],onpressed: (){items.removeAt(index);
    animateKey.currentState!.removeItem(index, (context, animation) {
    return SizeTransition(
    sizeFactor: animation,
    child: animatedListItem(text: items[index],),
    );});},),
    ),),)
    ],
    ),
    );
    }
  }
