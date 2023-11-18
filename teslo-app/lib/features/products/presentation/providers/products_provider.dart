import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:teslo_shop/features/products/domain/domain.dart';
import 'products_repository_provider.dart';

final productsProvider = StateNotifierProvider<ProductsNotifier, ProductsState>((ref) {

  final productsRepository = ref.watch( productsRepositoryProvider );

  return ProductsNotifier(
    productsRepository: productsRepository
  );
  
});

class ProductsNotifier extends StateNotifier<ProductsState> {
  
  final ProductsRepository productsRepository;

  ProductsNotifier({
    required this.productsRepository
  }): super ( ProductsState()) {
    loadNextPage();
  }

  Future loadNextPage() async {

    if( state.isLastpage || state.isLoading ) return;

    state = state.copyWith( isLoading: true );

    final products = await productsRepository
      .getProductsByPage( limit: state.limit, offset: state.offset );
    
    if( products.isEmpty ) {
      state = state.copyWith(
        isLastpage: true,
        isLoading: false
      );
      return;
    }

    state = state.copyWith(
      isLoading: false,
      isLastpage: false,
      offset: state.offset + 10,
      products: [ ...state.products, ...products ]
    );
  }

}

class ProductsState {
  
  final bool isLastpage;
  final int limit;
  final int offset;
  final bool isLoading;
  final List<Product> products;

  ProductsState({
    this.isLastpage = false,
    this.limit = 10,
    this.offset = 0,
    this.isLoading = false,
    this.products = const [],
  });

  ProductsState copyWith({
    bool? isLastpage,
    int? limit,
    int? offset,
    bool? isLoading,
    List<Product>? products
  }) => ProductsState (
    isLastpage: isLastpage ?? this.isLastpage,
    limit: limit ?? this.limit,
    offset: offset ?? this.offset,
    isLoading: isLoading ?? this.isLoading,
    products: products ?? this.products
  );
}