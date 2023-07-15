import 'package:flutter_bloc/flutter_bloc.dart';

class active_navigator_item extends Cubit<int>{
  active_navigator_item():super(0);

  void active_index(int e)=>emit(e);}