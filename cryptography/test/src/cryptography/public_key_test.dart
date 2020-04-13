// Copyright 2019-2020 Gohilla Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:typed_data';

import 'package:cryptography/cryptography.dart';
import 'package:test/test.dart';

void main() {
  group('PublicKey:', () {
    test('"==" / hashCode', () {
      final value = PublicKey(Uint8List.fromList([3, 1, 4]));
      final clone = PublicKey(Uint8List.fromList([3, 1, 4]));
      final other0 = PublicKey(Uint8List.fromList([3, 1, 999]));
      final other1 = PublicKey(Uint8List.fromList([3, 1, 4, 999]));

      expect(value, clone);
      expect(value, isNot(other0));
      expect(value, isNot(other1));

      expect(value.hashCode, clone.hashCode);
      expect(value.hashCode, isNot(other0.hashCode));
      expect(value.hashCode, isNot(other1.hashCode));
    });

    test('toString()', () {
      final a = PublicKey(Uint8List.fromList([18, 19, 20]));
      expect(a.toString(), 'PublicKey([18, 19, 20])');
    });
  });
}
