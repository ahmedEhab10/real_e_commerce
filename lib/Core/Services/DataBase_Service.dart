import 'package:real_e_commerce/Features/Auth/domin/Entits/User_Entity.dart';

abstract class DatabaseService {
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
    String? documentId,
  });

  Future<Map<String, dynamic>> getData({
    required String path,
    required String documentId,
  });
}
