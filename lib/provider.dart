import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProvider extends StateNotifier<int>{
  CounterProvider() : super(0);

  void increament(){
    state = state +1;
  }

  void decreament(){
    state = state - 1;
  }

}


final counterProviderData = StateNotifierProvider<CounterProvider ,int>((ref) {
return CounterProvider();
},);