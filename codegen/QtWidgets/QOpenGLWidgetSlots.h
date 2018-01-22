%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes=5,4,0

class SlotsQOpenGLWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQOpenGLWidget(QObject *parent = 0);
  ~SlotsQOpenGLWidget();
  public slots:
  void aboutToCompose();
  void frameSwapped();
  void aboutToResize();
  void resized();
};
