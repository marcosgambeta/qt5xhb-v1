%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQMediaVideoProbeControl: public QObject
{
  Q_OBJECT
  public:
  SlotsQMediaVideoProbeControl(QObject *parent = 0);
  ~SlotsQMediaVideoProbeControl();
  public slots:
  void flush();
  void videoFrameProbed(const QVideoFrame & frame);
};
