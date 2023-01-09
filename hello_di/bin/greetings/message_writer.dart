import 'imessage_writer.dart';

/// ConsoleMessageWrite implements the IMessageWriter interface
/// that Salutation uses.
class ConsoleMessageWriter implements IMessageWriter {
  @override
  void write(String message) {
    print(message);
  }
}
