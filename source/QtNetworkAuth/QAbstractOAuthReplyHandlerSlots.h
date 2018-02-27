/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTOAUTHREPLYHANDLERSLOTS_H
#define QABSTRACTOAUTHREPLYHANDLERSLOTS_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QAbstractOAuthReplyHandler>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class QAbstractOAuthReplyHandlerSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractOAuthReplyHandlerSlots(QObject *parent = 0);
  ~QAbstractOAuthReplyHandlerSlots();
  public slots:
  void callbackDataReceived( const QByteArray & data );
  void replyDataReceived( const QByteArray & data );
};

#endif /* QABSTRACTOAUTHREPLYHANDLERSLOTS_H */