%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQLabel: public QObject
{
  Q_OBJECT
  public:
  SlotsQLabel(QObject *parent = 0);
  ~SlotsQLabel();
  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};
