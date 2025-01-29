import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/core/model/data_model.dart';
import 'package:dalel/features/cart/data/model/cart_item_model.dart';
import 'package:dalel/features/cart/data/model/history_book_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());
  final cartCubit = FirebaseFirestore.instance;
  List<DataModel> historicalPeriodsList = [];
  List<HistoryBookModel> historicalBooksList = [];
  List<HistoryBookModel> histricalBooksFilterationList = [];
  List<HistoryBookModel> historicalSouvinersList = [];
  List<HistoryBookModel> histricalSouvinersFilterationList = [];
  List<CartItemModel> userCartList = [];
  num totalPayment = 0.0;

  Future<void> fetchHistoricalPeriods() async {
    try {
      emit(CartPeroidsLoadingState());
      await cartCubit.collection("historical_periods").get().then((value) {
        value.docs.forEach((element) {
          historicalPeriodsList.add(DataModel.fromJason(jason: element.data()));
        });
        emit(CartPeroidsSuccessState());
      });
    } catch (e) {
      emit(CartPeroidsFailureState(msg: e.toString()));
    }
  }

  Future<void> fetchHistoricalBooks() async {
    try {
      emit(CartBooksLoadingState());
      await cartCubit.collection("historical_Books").get().then((value) {
        value.docs.forEach((element) {
          historicalBooksList.add(HistoryBookModel.fromJson(element.data()));
        });
        getHistoricalSpecificCatergoryBook(historicalPeriodsList.first.title);
        emit(CartBooksSuccessState());
      });
    } catch (e) {
      emit(CartBooksFailureState(msg: e.toString()));
    }
  }

  void getHistoricalSpecificCatergoryBook(String category) {
    histricalBooksFilterationList = [];
    historicalBooksList.forEach((book) {
      if (book.category == category) {
        histricalBooksFilterationList.add(book);
      }
    });
    emit(CartBooksSuccessState());
  }

  Future<void> fetchHistoricalSouviners() async {
    try {
      emit(CartSouvinersLoadingState());
      await cartCubit
          .collection("historical_souvenirs")
          .where("category", isNotEqualTo: "general")
          .get()
          .then((value) {
        value.docs.forEach((element) {
          historicalSouvinersList
              .add(HistoryBookModel.fromJson(element.data()));
        });
        getHistoricalSpecificCatergorySouviners(
            historicalPeriodsList.first.title);
        emit(CartSouvinersSuccessState());
      });
    } catch (e) {
      emit(CartSouvinersFailureState(msg: e.toString()));
    }
  }

  void getHistoricalSpecificCatergorySouviners(String category) {
    histricalSouvinersFilterationList = [];
    historicalSouvinersList.forEach((souviners) {
      if (souviners.category == category) {
        histricalSouvinersFilterationList.add(souviners);
      }
    });
    emit(CartSouvinersSuccessState());
  }

  Future<void> fetchUserCart() async {
    emit(CartUserLoadingState());
    try {
      await cartCubit
          .collection('user')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .collection('cart')
          .get()
          .then((value) {
        value.docs.forEach((book) {
          userCartList.add(CartItemModel.fromJason(jason: book.data()));
        });
        emit(CartUserSuccessState());
      });
    } catch (e) {
      emit(CartUserFailureState(msg: e.toString()));
    }
  }

  Future<void> addToCart(HistoryBookModel book) async {
    final item = book.title;

    for (CartItemModel e in userCartList) {
      if (e.id == item) {
        emit(CartAddedFailureState(msg: "Item Exist"));
        return;
      }
    }

    emit(CartAddedLoadingState());
    try {
      await cartCubit
          .collection('user')
          .doc(FirebaseAuth.instance.currentUser!.email)
          .collection('cart')
          .doc(book.title)
          .set({
        'title': book.title,
        'price': book.price,
        'quantity': 1,
        'image': book.image,
        'id': book.title,
        'isSelected': false
      });

      await fetchUserCart();
      emit(CartAddedSuccessState());
    } catch (e) {
      emit(CartAddedFailureState(msg: e.toString()));
    }
  }

  Future<void> removeToCart() async {
    for (CartItemModel item in userCartList) {
      if (item.isSelected) {
        cartCubit
            .collection('user')
            .doc(FirebaseAuth.instance.currentUser!.email)
            .collection('cart')
            .doc(item.id)
            .delete();
      }
      userCartList = [];
      await fetchUserCart();
    }
  }

  void incrementQuantity(CartItemModel model) {
    if (model.quantity >= 1) {
      model.quantity++;
      if (model.isSelected) {
        getTotalPayment();
      }
      emit(CartIncrementState());
    }
  }

  void decrementQuantity(CartItemModel model) {
    if (model.quantity > 1) {
      model.quantity--;
      if (model.isSelected) {
        getTotalPayment();
      }
      emit(CartIncrementState());
    }
  }

  void toggelCheckBoxValue(CartItemModel model) {
    model.isSelected = !model.isSelected;
    getTotalPayment();
    emit(CartToggelCheckBoxValueState());
  }

  void getTotalPayment() {
    totalPayment = 0.0;
    for (CartItemModel item in userCartList) {
      if (item.isSelected) {
        totalPayment += item.price * item.quantity;
      }
    }
    emit(CartGetTotalPriceValueState());
  }
}
