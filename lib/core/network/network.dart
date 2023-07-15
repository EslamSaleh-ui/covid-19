import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class network {
  Future<bool> Network_Connect();
}

class Network implements network{
  final InternetConnectionChecker I_connection;
   Network(this.I_connection);
  @override
  Future<bool> Network_Connect() =>I_connection.hasConnection;
}