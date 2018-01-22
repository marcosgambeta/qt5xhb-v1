%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsRotation: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsRotation(QObject *parent = 0);
  ~SlotsQGraphicsRotation();
  public slots:
  void angleChanged ();
  void axisChanged ();
  void originChanged ();
};
