

class InformationModel{
  final String name;
  final String brithDay;
  final int age;
  final String city;
  final String profession;
  final String university;
  final String ? fb;
  final String howMartyr;
  final String dateMartyr;
  final String whereMartyr;
  final String source;
  final String relativeName;
   final String ?relativeNumber;

  InformationModel(
  {
    required this.name,
    required this.brithDay,
    required this.age,
    required this.city,
    required this.profession,
    required this.university,
        this.fb,
    required this.howMartyr,
    required this.dateMartyr,
    required this.whereMartyr,
    required this.source,
    required this.relativeName,
   this.relativeNumber
}
      );




}