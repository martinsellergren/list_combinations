import 'package:list_combinations/list_combinations.dart';

void main() {
  int l = 6;
  List<int> xs = [for (int i = 0; i < l; i++) i];
  print(xs.allCombinations);
}
