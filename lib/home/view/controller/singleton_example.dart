class Singleton {
  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }

  Singleton._internal();
}

class EventLogger {
  // Instância única da classe EventLogger
  static EventLogger? _instance;

  // Construtor nomeado privado
  EventLogger._internal();

  // Método de factory para obter a instância única
  factory EventLogger() { 
    // Inicialize recursos necessários para o logger, se houver.
    return _instance ??= EventLogger._internal();
  }

  // Método para log de eventos
  void logEvent(String event) { 
    print('Evento registrado: $event');
  }
}
