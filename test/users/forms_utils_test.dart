import 'package:country_app_indra/users/ui/utils/forms_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FormsUtils.validateEmail', () {
    test('returns error when empty', () {
      expect(FormsUtils.validateEmail(''), isNotNull);
      expect(FormsUtils.validateEmail('   '), isNotNull);
    });

    test('returns error when invalid format', () {
      expect(FormsUtils.validateEmail('pepe'), isNotNull);
      expect(FormsUtils.validateEmail('pepe@'), isNotNull);
      expect(FormsUtils.validateEmail('pepe@domain'), isNotNull);
      expect(FormsUtils.validateEmail('pepe@domain.'), isNotNull);
    });

    test('returns null when valid', () {
      expect(FormsUtils.validateEmail('test@example.com'), isNull);
      expect(FormsUtils.validateEmail(' test@example.com '), isNull);
    });
  });

  group('FormsUtils.validatePassword', () {
    test('returns error when empty', () {
      expect(FormsUtils.validatePassword(''), isNotNull);
    });

    test('returns error when too short', () {
      expect(FormsUtils.validatePassword('12345'), isNotNull);
    });

    test('returns null when valid', () {
      expect(FormsUtils.validatePassword('123456'), isNull);
      expect(FormsUtils.validatePassword('a secure password'), isNull);
    });
  });
}

