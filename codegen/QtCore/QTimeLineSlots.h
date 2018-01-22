%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTimeLine: public QObject
{
  Q_OBJECT
  public:
  SlotsQTimeLine(QObject *parent = 0);
  ~SlotsQTimeLine();
  public slots:
  void finished ();
  void frameChanged ( int frame );
  void stateChanged ( QTimeLine::State newState );
  void valueChanged ( qreal value );
};
