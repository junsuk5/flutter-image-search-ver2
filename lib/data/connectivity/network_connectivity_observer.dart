import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:image_search_app_ver2/domain/connectivity/connectivity_observer.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ConnectivityObserver)
class NetworkConnectivityObserver implements ConnectivityObserver {
  final _connectivity = Connectivity();

  @override
  Stream<Status> observe() {
    return _connectivity.onConnectivityChanged.map((results) {
      if (results.contains(ConnectivityResult.mobile)) {
        return Status.available;
      } else if (results.contains(ConnectivityResult.wifi)) {
        return Status.available;
      }
      return Status.unavailable;
    });
  }

  @override
  Future<Status> check() async {
    final results = await _connectivity.checkConnectivity();

    if (results.contains(ConnectivityResult.mobile)) {
      return Status.available;
    } else if (results.contains(ConnectivityResult.wifi)) {
      return Status.available;
    }
    return Status.unavailable;
  }
}
