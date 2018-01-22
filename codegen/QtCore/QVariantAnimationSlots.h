%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQVariantAnimation: public QObject
{
  Q_OBJECT
  public:
  SlotsQVariantAnimation(QObject *parent = 0);
  ~SlotsQVariantAnimation();
  public slots:
  void valueChanged ( const QVariant & value );
};
