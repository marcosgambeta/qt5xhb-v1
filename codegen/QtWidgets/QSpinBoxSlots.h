%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQSpinBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQSpinBox(QObject *parent = 0);
  ~SlotsQSpinBox();
  public slots:
  void valueChanged ( int value );
  void valueChanged ( const QString & text );
};
