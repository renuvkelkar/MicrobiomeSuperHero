part of 'food_cubit.dart';

enum FoodStatus { initial, loading, success, failure }

@immutable
class FoodState extends Equatable {
  const FoodState({
    this.status = FoodStatus.initial,
    this.items = const [],
  });

  final FoodStatus status;
  final List<FoodItem> items;  //[10,20,40]

  int get totalCalories => items.fold(0, (acc, cur) => acc + cur.cal);
  int get totalprotine => items.fold(0, (acc, cur) => acc + cur.protine);
  int get totalfiber => items.fold(0, (acc, cur) => acc + cur.fiber);
  @override
  List<Object?> get props => [status, items];

  FoodState copyWith({
    FoodStatus? status,
    List<FoodItem>? items,
  }) {
    return FoodState(
      status: status ?? this.status,
      items: items ?? this.items,
    );
  }
}
