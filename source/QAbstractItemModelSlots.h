/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTITEMMODEL_H
#define SLOTSQABSTRACTITEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractItemModel>

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

class SlotsQAbstractItemModel: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemModel(QObject *parent = 0);
  ~SlotsQAbstractItemModel();
  public slots:
  void columnsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void columnsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void columnsInserted ( const QModelIndex & parent, int start, int end );
  void columnsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn );
  void columnsRemoved ( const QModelIndex & parent, int start, int end );
  void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight );
  void headerDataChanged ( Qt::Orientation orientation, int first, int last );
  void layoutAboutToBeChanged ();
  void layoutChanged ();
  void modelAboutToBeReset ();
  void modelReset ();
  void rowsAboutToBeInserted ( const QModelIndex & parent, int start, int end );
  void rowsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsAboutToBeRemoved ( const QModelIndex & parent, int start, int end );
  void rowsInserted ( const QModelIndex & parent, int start, int end );
  void rowsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow );
  void rowsRemoved ( const QModelIndex & parent, int start, int end );
};

#endif // SLOTSQABSTRACTITEMMODEL_H
