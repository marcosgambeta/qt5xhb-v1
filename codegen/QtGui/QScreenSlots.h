%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQScreen(QObject *parent = 0);
  ~SlotsQScreen();
  public slots:
  void geometryChanged(const QRect &geometry);
  void physicalSizeChanged(const QSizeF &size);
  void physicalDotsPerInchChanged(qreal dpi);
  void logicalDotsPerInchChanged(qreal dpi);
  void virtualGeometryChanged(const QRect &rect);
  void primaryOrientationChanged(Qt::ScreenOrientation orientation);
  void orientationChanged(Qt::ScreenOrientation orientation);
  void refreshRateChanged(qreal refreshRate);
};
