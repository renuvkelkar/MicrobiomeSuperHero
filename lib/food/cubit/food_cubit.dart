import 'package:aahaarkarnti_chart_app/food/models/food_item.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';


part 'food_state.dart';

const mockFoodItems = [
  FoodItem(
    name: 'apple',
    imgUrl:
        'https://cdn-icons-png.flaticon.com/512/415/415733.png',
    cal: 52,
    protine: 25,
    fiber: 4,
  ),
  FoodItem(
    name: 'broccoli',
    imgUrl:
        'https://cdn-icons-png.flaticon.com/512/2909/2909841.png',
    cal: 45,
    protine: 2,
    fiber: 5,
  ),

  FoodItem(
    name: 'cloves',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/4788/4788074.png',
    cal: 2,
    protine: 1,
    fiber: 0,
  ),
  FoodItem(
    name: 'Carrot',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/2909/2909782.png',
    cal: 41,
    protine: 1,
    fiber: 2,
  ),
  FoodItem(
    name: 'Orange',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/1728/1728729.png',
    cal: 20,
    protine: 1,
    fiber: 3,
  ),
  FoodItem(
    name: 'walnut',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/1728/1728755.png',
    cal: 40,
    protine: 4,
    fiber: 7,
  ),
  FoodItem(
    name: 'Cashew',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/1625/1625070.png',
    cal: 8,
    protine: 5,
    fiber: 3,
  ),
  FoodItem(
    name: 'Almonds',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/2224/2224157.png',
    cal: 6,
    protine: 3,
    fiber: 1,
  ),
  FoodItem(
    name: 'Chilli',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/766/766024.png',
    cal: 3,
    protine: 0,
    fiber: 1,
  ),
  FoodItem(
    name: 'Banana',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/3143/3143645.png',
    cal: 35,
    protine: 1,
    fiber: 3,
  ),

  FoodItem(
    name: 'Tomato',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/4264/4264717.png',
    cal: 22,
    protine: 1,
    fiber: 1,
  ),
  FoodItem(
    name: 'Soyabean',
    imgUrl:
    'https://cdn-icons-png.flaticon.com/512/2224/2224180.png',
    cal: 2,
    protine: 9,
    fiber: 3,
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
  Future<void> removeAll() async {
    emit(
      state.copyWith(
        items: [...state.items]..clear(),
      ),
    );
  }
}
