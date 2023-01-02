import 'package:flutter/material.dart';
import 'package:ohio_constitution_app/details.dart';
import 'package:ohio_constitution_app/Lists.dart';

void main() {
runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ohio Constitution',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Ohio Constitution App',
          ),
          leading: Container(
            child: Image.asset('assets/images/trademark.PNG')
          )
          ),
          body: _buildListView(context),
        );
    
  }
  
  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 23,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(FirstMenuTitles[index],),
          subtitle: Text(FirstMenuSubtitles[index]),
          leading: Icon(Icons.gavel),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsPage(index))
            );
          }
        );
      },
      );
  }
}
