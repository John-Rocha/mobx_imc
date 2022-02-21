import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = _FutureControllerBase with _$FutureController;

abstract class _FutureControllerBase with Store {
  @observable
  // var nomeFuture = Future.value('').asObservable();
  var nomeFuture = ObservableFuture.value('');

  @action
  Future<void> buscarNome() async {
    final buscarNomeFuture = Future.delayed(
      const Duration(seconds: 4),
      () => 'Johnathan Rocha',
    );

    nomeFuture = ObservableFuture(buscarNomeFuture);
    // return 'Johnathan Rocha';
  }
}
