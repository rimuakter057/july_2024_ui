import 'package:flutter/material.dart';
import 'package:july_2024/view/Screens/AddInformation/show_information.dart';
import '../common_text.dart';


class AddDetails extends StatefulWidget {
  final List <Map<String,String>> receivedData;
  const AddDetails({super.key, required this.receivedData});

  @override
  State<AddDetails> createState() => _AddDetailsState();
}

class _AddDetailsState extends State<AddDetails> {
  final key = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController brithDayController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController professionController = TextEditingController();
  final TextEditingController universityController = TextEditingController();
  final TextEditingController facebookController = TextEditingController();
  final TextEditingController howMartyrController = TextEditingController();
  final TextEditingController dateMartyrController = TextEditingController();
  final TextEditingController whereMartyrController = TextEditingController();
  final TextEditingController sourceController = TextEditingController();
  final TextEditingController relativeNameController = TextEditingController();
  final TextEditingController relativeNumberController = TextEditingController();

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
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.red,
       leading: IconButton(onPressed: (){
         Navigator.pop(context);
       },
         style: IconButton.styleFrom(
           padding: const EdgeInsets.all(5),
           backgroundColor: Colors.white
         ),
       icon: const Icon(Icons.arrow_back,color: Colors.red,),
       ),
       centerTitle: true,
       title: const CommonText(text: "July 2024",color: Colors.white,fontSize: 18,),
     ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            children: [
              const SizedBox(height: 15,),
              const CommonText(text: '''কোটা আন্দোলন - 
            ২০২৪ এর  শহীদ ভাই বোনদের 
            তালিকা করতে সাহায্য করুন। ''',fontWeight: FontWeight.bold,fontSize: 16,),
              const SizedBox(height: 15,),
              const CommonText(text:'''এই অল্প সময়ের মধ্যে
                   এত এত শহীদ ভাইয়ের তথ্য সংগ্রহ করা 
                  একার পক্ষে প্রায় অসম্ভব,
               আপনাদের পরিচিত কেউ শহীদ হয়ে থাকলে,
                তথ্য পাঠিয়ে সাহায্য করুন।''',color: Colors.red,fontSize: 14, ),
              const SizedBox(height: 15,),
              Form(
                  key: key,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: 'শহীদের নাম',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter name";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: brithDayController,
                        decoration: InputDecoration(
                          labelText: 'জন্ম তারিখ ',
                          hintText: 'mm/dd/yyy',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter birthdate";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: ageController,
                        keyboardType:TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'আনুমানিক বয়স',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter age";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: cityController,
                        decoration: InputDecoration(
                          labelText: 'জন্মস্থান (ঠিকানা)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter city";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: professionController,
                        decoration: InputDecoration(
                          labelText: 'পেশা',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter profession";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: universityController,
                        decoration: InputDecoration(
                          labelText: 'শিক্ষা প্রতিষ্ঠান/ কর্মস্থল',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter university/place";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: facebookController,
                        decoration: InputDecoration(
                          labelText: 'ফেসবুক আইডি (যদি থাকে)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                      /*  validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter facebook id";
                          }
                          return null;
                        },*/
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: howMartyrController,
                        decoration: InputDecoration(
                          labelText: 'কিভাবে শহীদ হয়েছে?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter information";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: dateMartyrController,
                        decoration: InputDecoration(
                          labelText: 'কত তারিখে  শহীদ হয়েছে?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter information";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: whereMartyrController,
                        decoration: InputDecoration(
                          labelText: 'কোথায় শহীদ হয়েছে?',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter information";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: sourceController,
                        decoration: InputDecoration(
                          labelText: 'সোর্স',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter source";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: relativeNameController,
                        decoration: InputDecoration(
                          labelText: 'আপনার নাম এবং শহীদের সাথে সম্পর্ক (যদি থাকে)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter information";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      TextFormField(
                        controller: relativeNumberController,
                        decoration: InputDecoration(
                          labelText: 'মোবাইল নাম্বার (শহীদের ফ্যামিলি / আত্মীয়)',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          enabledBorder:
                          const OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter information";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height*.07,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            var isValid = key.currentState!.validate();
                            if(isValid){
                            //  List<Map<String, String>> data = [];
                              myData.add({
                                "name": nameController.text,
                                "birth": brithDayController.text,
                                "age": ageController.text,
                                "city": cityController.text,
                                "profession": professionController.text,
                                "university": universityController.text,
                                "facebook": facebookController.text,
                                "howMartyr": howMartyrController.text,
                                "dateMartyr": dateMartyrController.text,
                                "whereMartyr": whereMartyrController.text,
                                "source": sourceController.text,
                                "relativeName": relativeNameController.text,
                                "relativeNumber": relativeNumberController.text,

                              }

                              );
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowInformation(receivedData: myData,)));
                            }else{
                              print("error");
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                          child: const CommonText(text: "submit",color: Colors.white,fontSize: 20,),
                        ),
                      ),

                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}



