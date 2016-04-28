class Logger {
  String name;
  Logger(this.name);
  info(String message) {
    print('$name: $message');
  }
}


Logger getLogger(String loggerName) {
  Logger logger = new Logger(loggerName);
  return logger;
}

