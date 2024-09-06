import 'package:flutter/material.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key});

  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
    List slideImages=[
      Image.asset('assets/images/slides/slide1.jpeg',fit: BoxFit.cover,),
      Image.asset('assets/images/slides/slide2.jpeg',fit: BoxFit.cover,),
      Image.asset('assets/images/slides/slide3.jpeg',fit: BoxFit.cover,),
      Image.asset('assets/images/slides/slide4.jpeg',fit: BoxFit.cover,),
      Image.asset('assets/images/slides/slide5.jpeg',fit: BoxFit.cover,),
      Image.asset('assets/images/slides/slide6.jpeg',fit: BoxFit.cover,),

    ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(height: MediaQuery.sizeOf(context).height*.2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: PageView.builder(itemBuilder: (context,index){
          return slideImages[index];
        }),
      ),
    );
  }
}

