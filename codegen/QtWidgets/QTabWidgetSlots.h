%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTabWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQTabWidget(QObject *parent = 0);
  ~SlotsQTabWidget();
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarClicked(int index);
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  void tabBarDoubleClicked(int index);
#endif
};
