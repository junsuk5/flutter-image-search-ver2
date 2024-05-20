abstract interface class ConnectivityObserver {
  Stream<Status> observe();

  Future<Status> check();
}

enum Status {
  available,
  unavailable,
}
