part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  final String erorrmessage;

  ProductsFailure(this.erorrmessage);
}

final class ProductsSuccess extends ProductsState {
  final List<ProductEntitey> products;

  ProductsSuccess(this.products);
}
