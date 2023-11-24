import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multibloc/bloc/bloc1/bloc_a_bloc.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ABloc,AState>(builder: (context, state) =>
    state is ExecuteOpenSecondWindow ?

    SafeArea(child:
    Align(
        alignment: Alignment.center,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 2000),
          height: state.height,
          width: state.width,
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<ABloc>().add(CloseSecondWindow(act: state.act, height: 0, width: 0));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                ),
                child: const Text('Close Window'),
              ),
              Text(
                '${state}',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),

            ],
          ),
        )
    )
    )
        : Text('s'),
    );
  }
}
