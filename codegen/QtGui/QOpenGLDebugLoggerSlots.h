%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQOpenGLDebugLogger: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLDebugLogger(QObject *parent = 0);
  ~SlotsQOpenGLDebugLogger();
  public slots:
  void messageLogged(const QOpenGLDebugMessage &debugMessage);
};
