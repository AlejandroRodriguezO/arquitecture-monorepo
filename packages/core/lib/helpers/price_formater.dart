import 'package:intl/intl.dart';

String formatCLP(String value) {
  final String digits = value.replaceAll(RegExp(r'[^0-9]'), '');
  if (digits.isEmpty) {
    return '0';
  }
  final NumberFormat formatter = NumberFormat('#,###', 'es_CL');
  return formatter.format(int.parse(digits)).replaceAll(',', '.');
}