import 'package:collection/collection.dart';

const listEquality = ListEquality();

class ComparableList<T> {
  List<T> list;

  ComparableList(this.list);

  @override
  bool operator ==(other) => other is ComparableList && listEquality.equals(list, other.list);

  @override
  int get hashCode => listEquality.hash(list);
}

Set<List<T>> insertEverywhere<T>(T x, List<T> xs) {
  Set<List<T>> all = {};
  for (int i = 0; i <= xs.length; i++) {
    List<T> xs_ = xs.toList();
    xs_.insert(i, x);
    all.add(xs_);
  }
  return all;
}

extension ListCombinationsExtention<T> on List<T> {
  Set<List<T>> get allCombinations {
    return fold({[]}, (Set<List<T>> combinations, T elem) {
      return combinations //
          .map((xs) => insertEverywhere(elem, xs))
          .expand((_) => _)
          .map((xs) => ComparableList(xs))
          .toSet()
          .map((compXs) => compXs.list)
          .toSet();
    });
  }
}
