%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQButtonGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQButtonGroup(QObject *parent = 0);
  ~SlotsQButtonGroup();
  public slots:
  void buttonClicked ( QAbstractButton * button );
  void buttonClicked ( int id );
  void buttonPressed ( QAbstractButton * button );
  void buttonPressed ( int id );
  void buttonReleased ( QAbstractButton * button );
  void buttonReleased ( int id );
};
