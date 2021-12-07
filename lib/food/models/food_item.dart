import 'package:equatable/equatable.dart';

class FoodItem extends Equatable {
  const FoodItem({
    required this.name,
    required this.imgUrl,
    required this.cal,
    required this.protine,
    required this.fiber,


  });

  final String name;
  final String imgUrl;
  final int cal;
  final int protine;
  final int fiber;

  @override
  List<Object> get props => [name, imgUrl, cal,protine, fiber];
}
