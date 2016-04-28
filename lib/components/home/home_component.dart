import 'package:angular2/angular2.dart';
import 'package:instock/service/event_bus.dart';

import 'package:instock/components/common/logger.dart';

@Component(selector: 'is-home', templateUrl: 'home_component.html')
class HomeComponent implements AfterViewInit {
  EventBus eventBus;
  Logger logger;
  HomeComponent(this.eventBus) {
    logger = getLogger('HomeComponent');
  }

  ngAfterViewInit() {
    logger.info('ngAfterViewInit');
    eventBus.appTitle.emit('Home page');
  }
}