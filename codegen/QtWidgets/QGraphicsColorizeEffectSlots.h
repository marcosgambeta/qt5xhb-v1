%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQGraphicsColorizeEffect: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsColorizeEffect(QObject *parent = 0);
  ~SlotsQGraphicsColorizeEffect();
  public slots:
  void colorChanged ( const QColor & color );
  void strengthChanged ( qreal strength );
};
