import 'package:intl/intl.dart';

extension FechaEnEspanol on DateTime {
  String toFechaEnEspanol() {
    final DateFormat formato = DateFormat('d MMMM y', 'es');
    final String fecha = formato.format(this);
    return fecha[0].toUpperCase() + fecha.substring(1);
  }
}