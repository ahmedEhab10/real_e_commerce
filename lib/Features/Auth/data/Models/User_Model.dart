import 'package:firebase_auth/firebase_auth.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.userId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      userId: user.uid,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      userId: json['userId'],
    );
  }

  factory UserModel.fromUserEntity(UserEntity user) {
    return UserModel(name: user.name, email: user.email, userId: user.userId);
  }

  toMap() {
    return {
      'name': name,
      'email': email,
      'userId': userId,
    }; // احنا هنا في الميثود دي لما مدخل بيانات في ال يوزر انتيتي علطول مباشرتنا بتتخزن علي شمل الماب دي ليه؟ لاننا لما بنخزن البيانات في الفايرستور بنحتاج البيانات علي شكل ماب بلتالي بنخزنها هنا بشكل الماب علشن لما نستدعيخا في التخزين تكزن جاهزه
  }
}
