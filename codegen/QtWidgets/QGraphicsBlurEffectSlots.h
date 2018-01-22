%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsBlurEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsBlurEffect(QObject *parent = 0);
  ~SlotsQGraphicsBlurEffect();
  public slots:
  void blurHintsChanged ( QGraphicsBlurEffect::BlurHints hints );
  void blurRadiusChanged ( qreal radius );
};
