import 'package:angular2/angular2.dart';
import 'package:instock/service/event_bus.dart';
import 'package:instock/components/common/base_component.dart';

@Component(selector: 'is-about', templateUrl: 'about.html')
class AboutComponent extends BaseComponent implements AfterViewInit {
  EventBus eventBus;
  AboutComponent(this.eventBus);
  String version = 'Instock version 3.0.1';
  ngAfterViewInit() {
    logger.fine('ngAfterViewInit');
    eventBus.appTitle.emit('About');
  }
}
