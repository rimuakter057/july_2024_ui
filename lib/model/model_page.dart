import 'package:flutter/material.dart';
import 'package:july_2024/model/model_second.dart';
import 'package:july_2024/view/Screens/common_text.dart';

import 'information_model.dart';

class ModelPage extends StatefulWidget {
  const ModelPage({super.key});

  @override
  State<ModelPage> createState() => _ModelPageState();
}

class _ModelPageState extends State<ModelPage> {
  List<InformationModel> informationModel = [];
  void myInformationModel() {
    informationModel.add(InformationModel(
        name: "rimu",
        brithDay: "2002",
        age: 43,
        city: "dinajpur",
        profession: "student",
        university: "DPI",
        howMartyr: "Accident",
        dateMartyr: "2030",
        whereMartyr: "Dhaka",
        source: "me",
        relativeName: "..."));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                print("data: ${informationModel}");
              },
              child: Center(
                  child: CommonText(
                    text: "Click",
                  ))),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ModelSecond(
                              list: informationModel,
                            )));
              },
              child: Center(
                  child: CommonText(
                text: "Click",
              ))),
          ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: informationModel.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  onLongPress: () {
                    informationModel.removeAt(index);
                    setState(() {});
                  },
                  child: Column(
                    children: [
                      CommonText(text: "${informationModel[index].name}"),
                      CommonText(text: "${informationModel[index].brithDay}"),
                      CommonText(text: "${informationModel[index].university}"),
                      CommonText(text: "${informationModel[index].profession}"),
                      CommonText(text: "${informationModel[index].dateMartyr}"),
                      CommonText(text: "${informationModel[index].howMartyr}"),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
