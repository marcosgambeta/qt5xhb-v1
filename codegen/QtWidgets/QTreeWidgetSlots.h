%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTreeWidget>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTreeWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQTreeWidget(QObject *parent = 0);
  ~SlotsQTreeWidget();
  public slots:
  void currentItemChanged ( QTreeWidgetItem * current, QTreeWidgetItem * previous );
  void itemActivated ( QTreeWidgetItem * item, int column );
  void itemChanged ( QTreeWidgetItem * item, int column );
  void itemClicked ( QTreeWidgetItem * item, int column );
  void itemCollapsed ( QTreeWidgetItem * item );
  void itemDoubleClicked ( QTreeWidgetItem * item, int column );
  void itemEntered ( QTreeWidgetItem * item, int column );
  void itemExpanded ( QTreeWidgetItem * item );
  void itemPressed ( QTreeWidgetItem * item, int column );
  void itemSelectionChanged ();
};
