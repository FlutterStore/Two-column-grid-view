import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Grid_view(),
    );
  }
}


class Grid_view extends StatefulWidget {
  const Grid_view({super.key});

  @override
  State<Grid_view> createState() => _Grid_viewState();
}

class _Grid_viewState extends State<Grid_view> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Two Column GridView",style: TextStyle(fontSize: 15),),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15,left: 8,right: 8),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Text('${index+1}',style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    );
                  }
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}