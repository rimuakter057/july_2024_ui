import 'package:flutter/material.dart';
import 'package:july_2024/model/image_model.dart';
import 'package:july_2024/view/Screens/HomePage/Widget/card.dart';
import 'package:july_2024/view/Screens/common_text.dart';
import 'package:marquee/marquee.dart';
import '../AddInformation/add_information_page.dart';
import 'Widget/search_bar.dart';
import 'Widget/slide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.black,
         onPressed: () {
       },
       child: IconButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddDetails(receivedData:[])));

       },icon: const Icon(Icons.add,size: 40,color: Colors.white,),),

       ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                ),
                child: Column(
                  children: [
                    CommonText(
                      text: "july 2024",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      child: Icon(Icons.person_outline_outlined),
                    ),
                    CommonText(
                      text: "Your name",
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    CommonText(
                      text: "name33@gmail.com",
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(children: [
                  InkWell(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "Setting",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddDetails(receivedData: [],)));
                    },
                    child: const ListTile(
                      leading: Icon(
                        Icons.add,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "Add Shahid",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.notifications_none,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "Notification",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.account_box_rounded,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "About Us",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.dangerous_outlined,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "Shahid Info",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const ListTile(
                      leading: Icon(
                        Icons.share,
                        color: Colors.red,
                      ),
                      title: CommonText(
                        text: "Shear",
                        fontSize: 16,
                        color: Colors.red,

                      ),
                    ),
                  ),
                ],),
              ),

            ],
          ),
        ),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: Colors.red,
          centerTitle: true,
          title: const CommonText(
            text: "JULY 2024",
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                    padding: const EdgeInsets.all(5), backgroundColor: Colors.white),
                icon: const Icon(
                  Icons.notifications_none,
                  color: Colors.red,
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              const HomeSearchBar(),
              const SizedBox(
                height: 10,
              ),
              const SlideWidget(),
              SizedBox(
                height: size.height * .05,
                child: Row(
                  children: [
                    Container(height:size.height*.03,
                    width: size.width*.2,

                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                        color: Colors.red,
                        border: Border.all(color: Colors.grey),
                      ),
                      alignment: Alignment.center,
                      child: const CommonText(text: "Notice",color: Colors.white,),
                    ),
                    Expanded(
                      child: Marquee(
                        scrollAxis: Axis.horizontal,
                        velocity: 50.0,
                        accelerationCurve: Curves.linear,
                        decelerationCurve: Curves.easeOut,
                        text:
                            "স্বাধীনতা অর্জনের চেয়ে স্বাধীনতা রক্ষা করা বেশি কঠিন।। বৈষম্য বিরোধী আন্দোলনে শহীদদের তালিকা বাংলাদেশ |",
                        style:
                            const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        childAspectRatio: 0.78,
                        crossAxisCount: 2),
                    itemCount: imageModels.length,
                    itemBuilder: (context, index) {
                      return HomeCard(imageModel: imageModels[index]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
