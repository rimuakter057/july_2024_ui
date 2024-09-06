import 'package:flutter/material.dart';
import 'package:july_2024/model/image_model.dart';
import 'package:july_2024/view/Screens/common_text.dart';

class HomeCard extends StatelessWidget {
  final ImageModel imageModel;
  const HomeCard({super.key, required this.imageModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        shadowColor: Colors.grey,
        elevation: 5,
        color: Colors.red,
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/slides/slide2.jpeg',
                  width: 147,
                  height: 98,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CommonText(
                  text: imageModel.name,
                  color: Colors.white,
                ),
                CommonText(
                  text: imageModel.profession,
                  color: Colors.white,
                ),
                CommonText(
                  text: imageModel.university,
                  color: Colors.white,
                ),
                  CommonText(
                    text: imageModel.city,
                    color: Colors.white,
                  ),
                CommonText(
                  text: imageModel.day,
                  color: Colors.white,
                ),
              ],),
            )
            ],
          ),
        ),
      ),
    );
  }
}
