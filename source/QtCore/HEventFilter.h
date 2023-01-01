/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HEVENTFILTER_H
#define HEVENTFILTER_H

#include <QtCore/QObject>
#include <QtCore/QEvent>
#include <QtCore/QHash>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

class HEventFilter : public QObject
{
  Q_OBJECT
public:
  HEventFilter( QObject *parent = NULL );
  ~HEventFilter();

protected:
  bool eventFilter( QObject *obj, QEvent *event );

private:
  QHash<QEvent::Type, QString> * m_events;
  PHB_ITEM m_eventFilterBlock;

public:
  void setEventFilterCB( PHB_ITEM block );
  PHB_ITEM returnQEvent( QEvent * ptr, const char * classname );
  PHB_ITEM returnQObject( QObject * ptr, const char * classname );
};

#endif /* HEVENTFILTER_H */
