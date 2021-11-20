import 'package:aahaarkarnti_chart_app/food/models/food_item.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


part 'food_state.dart';

const mockFoodItems = [
  FoodItem(
    name: 'apple',
    imgUrl:
        'https://image.shutterstock.com/image-vector/simple-apple-flat-style-vector-260nw-1355114489.jpg',
    cal: 10,
  ),
  FoodItem(
    name: 'broccoli',
    imgUrl:
        'https://image.freepik.com/free-vector/sticker-design-with-broccoli-isolated_1308-58801.jpg',
    cal: 10,
  ),
  FoodItem(
    name: 'pizza',
    imgUrl:
        'https://image.freepik.com/free-vector/top-view-italian-pizza-sticker-white-background_1308-65194.jpg',
    cal: 10,
  ),
];

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(const FoodState());

  Future<void> loadItems() async {
    if (state.status == FoodStatus.loading) {
      return;
    }

    emit(state.copyWith(status: FoodStatus.loading,));

    try {
      await Future<void>.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(
        status: FoodStatus.success,
        items: mockFoodItems,
      ));
    } catch (e) {
      emit(state.copyWith(status: FoodStatus.failure));
    }
  }

  Future<void> addItem(FoodItem item) async {
    emit(
      state.copyWith(
        items: [...state.items, item],

      ),
    );
  }


  Future<void> removeItem(FoodItem item) async {
    emit(
      state.copyWith(
        items: [...state.items]..remove(item),
      ),
    );
  }
}
