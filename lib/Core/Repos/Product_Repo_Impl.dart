import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Core/Models/product_model.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo.dart';
import 'package:real_e_commerce/Core/Services/DataBase_Service.dart';
import 'package:real_e_commerce/Core/Utils/Backend_const.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

class ProductRepoImpl implements ProductRepo {
  DatabaseService databaseService;
  ProductRepoImpl(this.databaseService);
  @override
  Future<Either<Failuers, List<ProductEntitey>>>
  getBestSellingProducts() async {
    try {
      var data =
          await databaseService.getData(
                path: BackendConst.getProducts,
                query: {
                  'limit': 10,
                  'orderBy': 'sellCount',
                  'descending': true,
                },
              )
              as List<Map<String, dynamic>>;

      List<ProductEntitey> products =
          data.map((e) => ProductModel.fromjson(e).toEntity()).toList();

      //  List<ProductEntitey> productEntities = products.map((e)=>e.toEntity()).toList();
      return Right(products);
    } on Exception catch (e) {
      return Left(ServerFailuers(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<ProductEntitey>>> getProducts() async {
    try {
      var data =
          await databaseService.getData(path: BackendConst.getProducts)
              as List<Map<String, dynamic>>;

      List<ProductEntitey> products =
          data.map((e) => ProductModel.fromjson(e).toEntity()).toList();

      //  List<ProductEntitey> productEntities = products.map((e)=>e.toEntity()).toList();
      return Right(products);
    } on Exception catch (e) {
      return Left(ServerFailuers(e.toString()));
    }
  }
}
