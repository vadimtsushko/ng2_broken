import 'package:angular2/angular2.dart';
import 'package:instock/service/event_bus.dart';

import 'package:instock/components/common/base_component.dart';

@Component(selector: 'is-home', templateUrl: 'home_component.html')
class HomeComponent extends BaseComponent implements AfterViewInit {
  EventBus eventBus;
  HomeComponent(this.eventBus);

  ngAfterViewInit() {
    logger.fine('ngAfterViewInit');
    eventBus.appTitle.emit('Home page');
  }
}