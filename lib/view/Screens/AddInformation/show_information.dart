import 'package:flutter/material.dart';

class ShowInformation extends StatefulWidget {
  final List <Map<String,String>> receivedData;

  const ShowInformation({super.key, required this.receivedData});

  @override
  State<ShowInformation> createState() => _ShowInformationState();
}

class _ShowInformationState extends State<ShowInformation> {
  List<Map<String,String>> myData =[];

  @override
  void initState() {
    if(widget.receivedData.isNotEmpty){
      myData = widget.receivedData;
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
             Expanded(
               child: ListView.builder(
                   shrinkWrap: true,
                   itemCount: myData.length,
                   scrollDirection: Axis.vertical,
                   itemBuilder: (context,index){
                 return
                   Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Card(
                       color: Colors.white,
                       elevation: 5,
                       shadowColor: Colors.redAccent,
                       child: Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("শহীদের নাম:${myData[index]['name']}",
                               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                             Text("জন্ম তারিখ:${myData[index]['birth']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("বয়স:${myData[index]['age']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("জন্মস্থান:${myData[index]['city']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("পেশা:${myData[index]['profession']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("শিক্ষা প্রতিষ্ঠান/ কর্মস্থল':${myData[index]["university"]}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20,),maxLines: 3,),
                             Text("ফেসবুক আইডি:${myData[index]['facebook']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("শহীদ হয়েছে:${myData[index]['howMartyr']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("শহীদ তারিখ:${myData[index]['dateMartyr']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("শহীদ হয়েছে:${myData[index]['whereMartyr']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("সোর্স:${myData[index]['source']}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("নাম  or সম্পর্ক:${myData[index]["relativeName"]}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                             Text("মোবাইল নাম্বার :${myData[index]["relativeNumber"]}",
                               style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),

                                              ],),
                       ),
                     ),
                   );

               }),
             )
        ],),
      ),
    );
  }
}
