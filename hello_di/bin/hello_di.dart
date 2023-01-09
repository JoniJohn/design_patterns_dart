import './greetings/imessage_writer.dart';
import './greetings/salutation.dart';
import './greetings/message_writer.dart';

/// Main method creates new instances
/// of both the ConsoleMessageWriter and
/// Salutation classes
void main() {
  IMessageWriter writer = ConsoleMessageWriter();
  Salutation sal = Salutation(writer);
  sal.exclaim();
}
