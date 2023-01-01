/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QTEXTBROWSERSLOTS_H
#define QTEXTBROWSERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWidgets/QTextBrowser>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

class QTextBrowserSlots: public QObject
{
  Q_OBJECT
  public:
  QTextBrowserSlots( QObject *parent = 0 );
  ~QTextBrowserSlots();
  public slots:
  void anchorClicked( const QUrl & link );
  void backwardAvailable( bool available );
  void forwardAvailable( bool available );
  void highlighted( const QUrl & link );
  void highlighted( const QString & link );
  void historyChanged();
  void sourceChanged( const QUrl & src );
};

#endif /* QTEXTBROWSERSLOTS_H */
