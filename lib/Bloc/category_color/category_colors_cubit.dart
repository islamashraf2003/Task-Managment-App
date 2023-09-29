import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'category_colors_state.dart';

class CategoryColorsCubit extends Cubit<CategoryColorsState> {
  CategoryColorsCubit() : super(CategoryColorsInitial());
  static CategoryColorsCubit get(context) => BlocProvider.of(context);
  // valus => 1(green) 2(blue) 4(orange)
  int indexColor = 1;
  int getGreen() {
    indexColor = 1;
    emit(CategoryColorsGreen());
    return indexColor;
  }

  int getBlue() {
    indexColor = 2;
    emit(CategoryColorsBlue());
    return indexColor;
  }

  int getOrange() {
    indexColor = 3;
    emit(CategoryColorsOrang());
    return indexColor;
  }
}
