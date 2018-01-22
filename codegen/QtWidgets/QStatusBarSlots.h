%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQStatusBar: public QObject
{
  Q_OBJECT
  public:
  SlotsQStatusBar(QObject *parent = 0);
  ~SlotsQStatusBar();
  public slots:
  void messageChanged ( const QString & message );
};
