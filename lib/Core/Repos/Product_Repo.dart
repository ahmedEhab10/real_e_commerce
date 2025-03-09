import 'package:dartz/dartz.dart';
import 'package:real_e_commerce/Core/Errors/failuers.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

abstract class ProductRepo {
  Future<Either<Failuers, List<ProductEntitey>>> getProducts();
  Future<Either<Failuers, List<ProductEntitey>>> getBestSellingProducts();
}
