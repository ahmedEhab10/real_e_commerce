import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:real_e_commerce/Core/Repos/Product_Repo.dart';
import 'package:real_e_commerce/Core/Services/DataBase_Service.dart';
import 'package:real_e_commerce/Core/entites/product_entitey.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitial());
  final ProductRepo productRepo;

  int productcount = 0;

  Future<void> getProducts() async {
    emit(ProductsLoading());
    final result = await productRepo.getProducts();
    result.fold(
      (failuers) {
        emit(ProductsFailure(failuers.Massage));
      },
      (products) {
        productcount = products.length;
        emit(ProductsSuccess(products));
      },
    );
  }

  Future<void> getBestProducts() async {
    emit(ProductsLoading());
    final result = await productRepo.getBestSellingProducts();
    result.fold(
      (failuers) {
        emit(ProductsFailure(failuers.Massage));
      },
      (products) {
        productcount = products.length;
        emit(ProductsSuccess(products));
      },
    );
  }
}
