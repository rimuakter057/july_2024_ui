import 'package:flutter/material.dart';
import 'package:july_2024/view/Screens/common_text.dart';

import 'information_model.dart';

class ModelSecond extends StatefulWidget {
  const ModelSecond({super.key, this.list});
 final List <InformationModel> ? list;

  @override
  State<ModelSecond> createState() => _ModelSecondState();
}

class _ModelSecondState extends State<ModelSecond> {
  @override
  void initState() {
    print("${widget.list}");
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CommonText(text: "Model Second",),),
      body:     ListView.builder(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.list!.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {},
              onLongPress: () {
                widget.list!.removeAt(index);
                setState(() {});
              },
              child: Column(
                children: [
                  CommonText(text: widget.list![index].name),
                  CommonText(text: widget.list![index].brithDay),
                  CommonText(text: widget.list![index].university),
                  CommonText(text: widget.list![index].profession),
                  CommonText(text: widget.list![index].dateMartyr),
                  CommonText(text: widget.list![index].howMartyr),
                ],
              ),
            );
          }),
    );
  }
}
