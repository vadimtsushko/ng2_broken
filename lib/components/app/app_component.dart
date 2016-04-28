// #docplaster
// #docregion
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';

import '../about/about.dart';
import '../home/home_component.dart';
import '../common/logger.dart';

import '../../service/event_bus.dart';
import 'dart:async';
@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    styleUrls: const ['app_component.css'],
    directives: const [ROUTER_DIRECTIVES],
    providers: const [EventBus]
)
@RouteConfig(const [
  const Route(path: '/about', name: 'About', component: AboutComponent),
  const Route(path: '/', name: 'Home', component: HomeComponent),

])
class AppComponent  implements OnInit {
  String title = 'Начальная строаница';
  List<Map> alerts = [];
  bool isLoaded = false;
  bool hasErrors = false;
  bool get showApp => isLoaded;
  EventBus eventBus;
  Logger logger;
  AppComponent(this.eventBus) {
    logger = getLogger('AppComponent');
  }

  ngOnInit() {
    eventBus.appTitle.listen(setTitle);
  }
  setTitle(String event) {
    logger.info('setTitle $event');
    scheduleMicrotask(() {
      title = event;
    });
  }
}
