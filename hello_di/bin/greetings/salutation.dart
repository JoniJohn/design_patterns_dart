import 'imessage_writer.dart';

class Salutation {
  final IMessageWriter writer;

  // Provides the Salutation class with IMessageWriter Dependency
  // using CONSTRUCTOR INJECTION
  Salutation(this.writer);

  // Sends the Hello, DI! Message to the IMessageWriter DEPENDENCY
  void exclaim() {
    writer.write("Hello, DI!");
  }
}
