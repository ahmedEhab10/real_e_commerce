import 'dart:convert';

import 'package:real_e_commerce/Constanat.dart';
import 'package:real_e_commerce/Core/Services/shared_preferences_Singlton.dart';
import 'package:real_e_commerce/Features/Auth/data/Models/User_Model.dart';
import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';

UserEntity GetUser() {
  var jsonString = SharedPreferencesSinglton.getString(KUserData);
  var userentity = UserModel.fromJson(jsonDecode(jsonString));
  return userentity;
}
