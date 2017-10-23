/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQTEXTBROWSER_H
#define SLOTSQTEXTBROWSER_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QTextBrowser>

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_signals.h"

class SlotsQTextBrowser: public QObject
{
  Q_OBJECT
  public:
  SlotsQTextBrowser(QObject *parent = 0);
  ~SlotsQTextBrowser();
  public slots:
  void anchorClicked ( const QUrl & link );
  void backwardAvailable ( bool available );
  void forwardAvailable ( bool available );
  void highlighted ( const QUrl & link );
  void highlighted ( const QString & link );
  void historyChanged ();
  void sourceChanged ( const QUrl & src );
};

#endif // SLOTSQTEXTBROWSER_H
