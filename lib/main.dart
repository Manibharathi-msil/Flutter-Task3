import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/count_bloc.dart';
import 'home_page.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>CountBloc(),
      //we want our children to access the block,so we are wrapping the material app using block provider
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}