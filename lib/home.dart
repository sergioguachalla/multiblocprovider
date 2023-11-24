import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/bloc/bloc1/bloc_a_bloc.dart';
import 'package:multibloc/bloc/pages/page_two.dart';

import 'bloc/enums/acts.dart';
import 'bloc/pages/page_one.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ABloc,AState>(
        builder: (context, state) => Scaffold(

          appBar: AppBar(

            title: Text('MultiBloc'),
            actions: [
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  BlocProvider.of<ABloc>(context).add(OpenWindow(act: Acts.open, height: 300, width: 300));

                },
              ),
              IconButton(
                icon: Icon(Icons.ac_unit),
                onPressed: () {
                  BlocProvider.of<ABloc>(context).add(CloseWindow(act: Acts.close, height: 0, width: 0));
                },
              ),
              IconButton(
                icon: Icon(Icons.add_circle),
                onPressed: () {
                  BlocProvider.of<ABloc>(context).add(OpenSecondWindow(act: Acts.open, height: 300, width: 300));
                  print(state);
                },
              ),
            ],

          ),
          body: Stack(
            children: [
              PageOne(),
              PageTwo(),
            ],
          )
        )
    );
  }
}
