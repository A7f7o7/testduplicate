import 'package:flutter/material.dart';
import 'package:ohio_constitution_app/Lists.dart';
import 'package:ohio_constitution_app/content.dart';

class DetailsPage extends StatelessWidget {
  final int index;

  DetailsPage(this.index);

  @override
  Widget build(BuildContext context){
 
    return Scaffold(
      appBar: AppBar(title: Text(ArticleHeaders[index]),
      ),
      body: 

  ListView.builder(
    itemCount: LengthList[index],
    itemBuilder: (context, index2){
      return ListTile(
        title: Text(SecondMenuTitlesList[index][index2]),
        subtitle: Text(SecondMenuSubtitlesList[index][index2]),
        leading: Icon(Icons.gavel),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContentPage(index,index2))
            );
          }
        ,);
    }
  )

      );
  }
}
 /* ListView NextListView(BuildContext Context){

  return ListView.builder(
    itemCount: LengthList[index]
    itemBuilder: (context, index2){
      return ListTile(
        title: Text(SecondMenuTitlesList[index][index2]),
        subtitle: Text('Placeholder'),
        leading: Icon(Icon.thumb_up),
        trailing: Icon(Icon.arrow_forward)
        ,);
    }
  );
} */


/*  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 21,
      itemBuilder: ( context, index){
        return ListTile(
          title: Text(FirstMenuTitles[index]),
          subtitle: Text(FirstMenuSubtitles[index]),
          leading: Icon(Icons.thumb_up),
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
  }*/