import 'package:test/test.dart';
import '../bin/greetings/imessage_writer.dart';
import '../bin/greetings/salutation.dart';

/// 1.4 Unit test the Salutation class
void main() {
  test('Exclaim will write correct message to MessageWriter', () {
    var writer = SpyMessageWriter();
    // The IMessageWriter Dependency is stubbed using the SpyMessageWriter
    // Test Spy
    var sut = Salutation(writer);
    sut.exclaim();
    expect('Hello, DI!', writer.writtenMessage);
  });
}

class SpyMessageWriter implements IMessageWriter {
  String _writtenMessage = "";

  // setters and getters
  // ignore: unnecessary_getters_setters
  String get writtenMessage => _writtenMessage;

  set writtenMessage(String message) => _writtenMessage = message;

  @override
  void write(String message) => _writtenMessage += message;
}
