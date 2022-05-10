import 'package:flutter/material.dart';
import 'package:new_provider/model/data_model.dart';
import 'package:new_provider/state/app_state.dart';
import 'package:new_provider/util/data_util.dart';
import 'package:provider/provider.dart';

class API_View extends StatelessWidget {
  const API_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Consumer<App_State>( builder: (context,providerData,child){
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: ()async{
          List<DataModel> data = await DataUtil().getData();
          providerData.updateDataModel(data);
          },child: Icon(Icons.refresh),
        ),

body: Container(
  child: providerData.datalist.isEmpty?Text("Data is Empty"):
  ListView.builder(
    itemBuilder:(context, index){
      print("{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{{providerData.datalist}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}");
      print(providerData.datalist[index].title);
      return ListTile(
        title: Text("${providerData.datalist[index].id}"),
        subtitle: Text("${providerData.datalist[index].body}"),
      );

    } ,
    itemCount: providerData.datalist.length,
  )
),
      );

    },
    );
  }
}
