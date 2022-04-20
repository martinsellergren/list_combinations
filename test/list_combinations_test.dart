import 'package:list_combinations/src/list_combinations_base.dart';
import 'package:test/test.dart';

void main() {
  group(
    'insertEverywhere',
    () {
      test('1', () {
        expect(
          insertEverywhere(1, [2, 3]),
          [
            [1, 2, 3],
            [2, 1, 3],
            [2, 3, 1]
          ],
        );
      });
      test('2', () {
        expect(
          insertEverywhere(1, []),
          [
            [1]
          ],
        );
      });
    },
  );

  group('allCombinations', () {
    test('1', () {
      expect(
        [].allCombinations,
        {[]},
      );
    });

    test('2', () {
      expect(
        [1].allCombinations,
        {
          [1]
        },
      );
    });

    test('3', () {
      expect(
        [1, 2, 3].allCombinations,
        {
          [1, 2, 3],
          [1, 3, 2],
          [2, 1, 3],
          [2, 3, 1],
          [3, 1, 2],
          [3, 2, 1]
        },
      );
    });
    test('4', () {
      expect([1, 1, 1].allCombinations, {
        [1, 1, 1]
      });
    });
    test('5', () {
      expect([1, 1, 2].allCombinations, {
        [1, 1, 2],
        [1, 2, 1],
        [2, 1, 1],
      });
    });
  });
}
