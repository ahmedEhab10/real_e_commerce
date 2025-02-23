class UserEntity {
  final String name;
  final String email;
  final String userId;

  UserEntity({required this.name, required this.email, required this.userId});

  toMap() {
    return {
      'name': name,
      'email': email,
      'userId': userId,
    }; // احنا هنا في الميثود دي لما مدخل بيانات في ال يوزر انتيتي علطول مباشرتنا بتتخزن علي شمل الماب دي ليه؟ لاننا لما بنخزن البيانات في الفايرستور بنحتاج البيانات علي شكل ماب بلتالي بنخزنها هنا بشكل الماب علشن لما نستدعيخا في التخزين تكزن جاهزه
  }
}
