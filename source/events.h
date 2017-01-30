/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef EVENTS_H
#define EVENTS_H

#include <QObject>
#include <QEvent>
#include <QList>
#include <QCoreApplication>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"

bool Events_connect_event ( QObject * object, int type, PHB_ITEM codeblock );
bool Events_disconnect_event ( QObject * object, int type );
void Events_release_codeblocks ();
void Events_disconnect_all_events (QObject * obj, bool children);

class Events: public QObject
{

  public:
  Events(QObject *parent = 0);
  ~Events();
  QList<QObject*> list1;     // armazena ponteiro do objeto
  QList<QEvent::Type> list2; // armazena tipo de evento
  QList<PHB_ITEM> list3;     // armazena codeblock
  QList<bool> list4;         // ativo (true) ou liberado (false)

  protected:
  bool eventFilter(QObject *obj, QEvent *event);

};

#endif
