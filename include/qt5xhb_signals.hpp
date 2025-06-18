//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#ifndef QT5XHB_SIGNALS_H
#define QT5XHB_SIGNALS_H

namespace Qt5xHb
{
  bool Signals_connect_signal( QObject * object, const QString & signal, PHB_ITEM codeblock );
  bool Signals_disconnect_signal( QObject * object, const QString & signal );
  bool Signals_is_signal_connected( QObject * object, const QString & signal );
  PHB_ITEM Signals_return_codeblock( QObject * object, const QString & signal );
  void Signals_release_codeblocks();
  //void Signals_disconnect_all_signals (QObject * obj);
  void Signals_disconnect_all_signals( QObject * obj, bool children );
  bool Signals_connection_disconnection( QObject * s, const QString & signal, const QString & slot );
  PHB_ITEM Signals_return_object( void * ptr, const char * classname );
  PHB_ITEM Signals_return_qobject( QObject * ptr, const char * classname );
}

#endif // QT5XHB_SIGNALS_H
