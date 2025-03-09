import 'package:get_it/get_it.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo_Impl.dart';
import 'package:real_e_commerce/Core/Services/DataBase_Service.dart';
import 'package:real_e_commerce/Core/Services/FireBase_Auth_Service.dart';
import 'package:real_e_commerce/Core/Services/Fire_Base_store_Service.dart';
import 'package:real_e_commerce/Features/Auth/data/Repo/Auth_Repo_Imp.dart';
import 'package:real_e_commerce/Features/Auth/domin/Repo/Auth_Repo.dart';

//احنا هنا بنعمل نسخه وحده من الكلاس بدل منقهد نكتب كل كلاس وجواه الحاجات الي بيحتاجها فاحنا بندمعهم هنا ويوم منحب نستدعي حاجاه فيهم بنستدعيها من نوعها زي مثال ال firebaseService

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerSingleton<DatabaseService>(FireBaseStoreService());
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(
      firebaseAuthService: getIt<FirebaseAuthService>(),
      databaseService: getIt<DatabaseService>(),
    ),
  );

  getIt.registerSingleton<ProductRepo>(
    ProductRepoImpl(getIt<DatabaseService>()),
  );
}
