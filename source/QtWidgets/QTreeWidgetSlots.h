/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTREEWIDGET_H
#define SLOTSQTREEWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTreeWidget>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

bool Signals_connect_signal ( QObject * object, QString signal, PHB_ITEM codeblock );
bool Signals_disconnect_signal ( QObject * object, QString signal );
bool Signals_is_signal_connected( QObject * object, QString signal );
PHB_ITEM Signals_return_codeblock ( QObject * object, QString signal );
void Signals_release_codeblocks ();
void Signals_disconnect_all_signals (QObject * obj);

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

#endif // SLOTSQTREEWIDGET_H
