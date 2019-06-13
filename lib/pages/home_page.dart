import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';

import 'blocs/cafe_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    CafeBloc bloc = BlocProvider.getBloc<CafeBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Injeção")),
      ),
      body:Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Image.network(bloc.getBackground(), fit: BoxFit.fill,),
            ),
            Center(
              child: Container(
                color: Colors.lightGreen,
                width: 100,
                height: 100,
                child: Center(child: Text(bloc.fazerCafe() , style: TextStyle(color: Colors.red , fontWeight: FontWeight.bold),)),
              ),
            ),
          ],
      ),
    );
  }
}
