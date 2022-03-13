import 'package:flutter/material.dart';



class DioData extends StatefulWidget {
  @override
  State<DioData> createState() => _DioDataState();
}

class _DioDataState extends State<DioData> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder<List<>>(
            future: ,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return ();
              } else {
                return const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            }));
  }
}
