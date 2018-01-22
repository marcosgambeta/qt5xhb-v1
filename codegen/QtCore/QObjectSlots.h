%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQObject(QObject *parent = 0);
  ~SlotsQObject();
  public slots:
  void destroyed ( QObject * obj = 0 );
  void objectNameChanged(const QString & objectName);
};
