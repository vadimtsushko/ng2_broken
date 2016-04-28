import 'package:angular2/angular2.dart';
@Injectable()
class EventBus {
  EventEmitter<String> appTitle = new EventEmitter<String>(false);
  EventEmitter<String> appError = new EventEmitter<String>(false);
}
