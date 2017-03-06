/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABLEWIDGET_H
#define SLOTSQTABLEWIDGET_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTableWidget>

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
bool Signals_connection_disconnection ( QObject * s, QString signal, QString slot );

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

#endif // SLOTSQTABLEWIDGET_H
