/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef QT5XHB_EVENTS_H
#define QT5XHB_EVENTS_H

namespace Qt5xHb
{
  bool Events_connect_event ( QObject * object, int type, PHB_ITEM codeblock );
  bool Events_disconnect_event ( QObject * object, int type );
  void Events_disconnect_all_events (QObject * obj, bool children);
  PHB_ITEM Events_return_object ( QEvent * ptr, const char * classname );
  PHB_ITEM Events_return_qobject ( QObject * ptr, const char * classname );
}

#endif /* QT5XHB_EVENTS_H */
