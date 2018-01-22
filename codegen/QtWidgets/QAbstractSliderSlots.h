%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQAbstractSlider: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractSlider(QObject *parent = 0);
  ~SlotsQAbstractSlider();
  public slots:
  void actionTriggered ( int action );
  void rangeChanged ( int min, int max );
  void sliderMoved ( int value );
  void sliderPressed ();
  void sliderReleased ();
  void valueChanged ( int value );
};
