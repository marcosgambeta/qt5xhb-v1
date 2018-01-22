%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

class SlotsQListWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQListWidget(QObject *parent = 0);
  ~SlotsQListWidget();
  public slots:
  void currentItemChanged ( QListWidgetItem * current, QListWidgetItem * previous );
  void currentRowChanged ( int currentRow );
  void currentTextChanged ( const QString & currentText );
  void itemActivated ( QListWidgetItem * item );
  void itemChanged ( QListWidgetItem * item );
  void itemClicked ( QListWidgetItem * item );
  void itemDoubleClicked ( QListWidgetItem * item );
  void itemEntered ( QListWidgetItem * item );
  void itemPressed ( QListWidgetItem * item );
  void itemSelectionChanged ();
};
