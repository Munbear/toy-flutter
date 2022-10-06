import 'package:flutter/foundation.dart' as foundation;

import 'product.dart';
import 'products_repository.dart';

double _salesTaxRate = 0.06;
double _shippingCostPerItem = 7;

class AppStateModel extends foundation.ChangeNotifier {
  // All the available products.
  List<Product> _availableProducts = [];

  // 현재 선택된 제품 카테고리
  Category _selectedCategory = Category.all;

  // ID 그리고 더 많은 현재 제품의 카트
  final _productsInCart = <int, int>{};

  Map<int, int> get productsInCart {
    return Map.from(_productsInCart);
  }

  // 카트 안에 있는 아이템 숫자의 합
  int get totalCartQuantity {
    return _productsInCart.values.fold(0, (accumulator, value) {
      return accumulator + value;
    });
  }

  Category get selectedCategory {
    return _selectedCategory;
  }

  // 카트안에 있는 아이템 가격들의 합
  double get subtotalCost {
    return _productsInCart.keys.map((id) {
      // Extended price for product line
      return getProductById(id).price * _productsInCart[id]!;
    }).fold(0, (accumulator, extendedPrice) {
      return accumulator + extendedPrice;
    });
  }

  // 카트안에 있는 아이템들의 쇼핑 가격의 합
  double get shippingCost {
    return _shippingCostPerItem *
        _productsInCart.values.fold(0.0, (accumulator, itemCount) {
          return accumulator + itemCount;
        });
  }

  double get tax {
    return subtotalCost + _salesTaxRate;
  }

  // 카트 안에 있는 아이템들의 판메세
  double get totalCost {
    return subtotalCost + shippingCost + tax;
  }

  // Returns a copy of the list of available products, filtered by category.
  List<Product> getProducts() {
    if (_selectedCategory == Category.all) {
      return List.from(_availableProducts);
    } else {
      return _availableProducts.where((p) {
        return p.category == _selectedCategory;
      }).toList();
    }
  }

  // 제품 목록 검색
  List<Product> search(String searchTerms) {
    return getProducts().where((product) {
      return product.name.toLowerCase().contains(searchTerms.toLowerCase());
    }).toList();
  }

  // 카트에 제품 추가하기 Adds a product to the cart.
  void addProductToCart(int productId) {
    if (!_productsInCart.containsKey(productId)) {
      _productsInCart[productId] = 1;
    } else {
      _productsInCart[productId] = _productsInCart[productId]! + 1;
    }

    notifyListeners();
  }

  // 카트에서 아이템들 지우기
  void removeItemFromCart(int productId) {
    if (_productsInCart.containsKey(productId)) {
      if (_productsInCart[productId] == 1) {
        _productsInCart.remove(productId);
      } else {
        _productsInCart[productId] = _productsInCart[productId]! - 1;
      }
    }

    notifyListeners();
  }

  // Returns the Product instance matching the provided id.
  Product getProductById(int id) {
    return _availableProducts.firstWhere((p) => p.id == id);
  }

  // 카트에 있는 모든 아이템 지우기
  void clearCart() {
    _productsInCart.clear();
    notifyListeners();
  }

  // 저장소에 업로드 가능한 제품 리스트들
  void loadProducts() {
    _availableProducts = ProductsRepository.loadProducts(Category.all);
    notifyListeners();
  }

  void setCategory(Category newCategory) {
    _selectedCategory = newCategory;
    notifyListeners();
  }
}
