%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQTableWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQTableWidget(QObject *parent = 0);
  ~SlotsQTableWidget();
  public slots:
  void cellActivated ( int row, int column );
  void cellChanged ( int row, int column );
  void cellClicked ( int row, int column );
  void cellDoubleClicked ( int row, int column );
  void cellEntered ( int row, int column );
  void cellPressed ( int row, int column );
  void currentCellChanged ( int currentRow, int currentColumn, int previousRow, int previousColumn );
  void currentItemChanged ( QTableWidgetItem * current, QTableWidgetItem * previous );
  void itemActivated ( QTableWidgetItem * item );
  void itemChanged ( QTableWidgetItem * item );
  void itemClicked ( QTableWidgetItem * item );
  void itemDoubleClicked ( QTableWidgetItem * item );
  void itemEntered ( QTableWidgetItem * item );
  void itemPressed ( QTableWidgetItem * item );
  void itemSelectionChanged ();
};
