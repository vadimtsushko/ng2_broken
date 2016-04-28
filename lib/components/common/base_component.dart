import 'package:quiver_log/log.dart';
import 'package:quiver_log/web.dart';
import 'package:logging/logging.dart';


Logger getLogger(String loggerName, [Level level = Level.ALL]) {
  Logger logger = new Logger(loggerName);
  Appender logAppender = new WebAppender.webConsole(BASIC_LOG_FORMATTER);
  Logger.root.level = level;
  logAppender.attachLogger(logger);
  return logger;
}

class BaseComponent {
  Logger logger;
  BaseComponent() {
    logger = getLogger(this.runtimeType.toString());
  }

}
