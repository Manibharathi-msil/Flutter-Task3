import 'package:bloc_pattern/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/count_bloc.dart';
import 'bloc/count_event.dart';
import 'bloc/count_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Counter App'),),),
      //BlocBuilder is used for finding events and states of the app.
      // If you wrap your widget inside BlocBuilder, you would be able to find them
      body: BlocBuilder<CountBloc, CounterStates>(
          builder: (context, state){
            return  Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.counter.toString(), style: const TextStyle(
                    fontSize: 30
                ),
                )    ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed:
                            //BlocProvider.of you can find the blocs and read the value of state variable
                            ()=>BlocProvider.of<CountBloc>(context).add(Increment()),
                        child: const Icon(Icons.add)
                    ),

                    const SizedBox(width: 10,),

                    ElevatedButton(
                        onPressed:
                            ()=>BlocProvider.of<CountBloc>(context).add(Decrement()),
                        child: const Icon(Icons.remove)
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => const SecondPage()));
                  },
                  child: Container(
                    width: 138,
                    height: 35,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey,
                    ),
                    child: const Center(child: Text("click", style: TextStyle(color: Colors.white),)),
                  ),

                )
              ],
            );

          }
      ),

    );
  }
}