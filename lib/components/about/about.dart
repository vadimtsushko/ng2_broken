import 'package:angular2/angular2.dart';
import 'package:instock/service/event_bus.dart';
import 'package:instock/components/common/logger.dart';

@Component(selector: 'is-about', templateUrl: 'about.html')
class AboutComponent implements AfterViewInit {
  EventBus eventBus;
  String version = 'Instock version 3.0.1';
  Logger logger;
  AboutComponent(this.eventBus) {
    logger = getLogger('AboutComponent');
  }

  ngAfterViewInit() {
    logger.info('ngAfterViewInit');
    eventBus.appTitle.emit('About');
  }
}
