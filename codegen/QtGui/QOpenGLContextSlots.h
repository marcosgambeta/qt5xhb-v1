%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQOpenGLContext: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLContext(QObject *parent = 0);
  ~SlotsQOpenGLContext();
  public slots:
  void aboutToBeDestroyed();
};
