/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSCREEN_H
#define SLOTSQSCREEN_H

#include <QObject>
#include <QCoreApplication>
#include <QString>

#include <QScreen>

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

class SlotsQScreen: public QObject
{
  Q_OBJECT
  public:
  SlotsQScreen(QObject *parent = 0);
  ~SlotsQScreen();
  public slots:
  void geometryChanged(const QRect &geometry);
  void physicalSizeChanged(const QSizeF &size);
  void physicalDotsPerInchChanged(qreal dpi);
  void logicalDotsPerInchChanged(qreal dpi);
  void virtualGeometryChanged(const QRect &rect);
  void primaryOrientationChanged(Qt::ScreenOrientation orientation);
  void orientationChanged(Qt::ScreenOrientation orientation);
  void refreshRateChanged(qreal refreshRate);
};

#endif // SLOTSQSCREEN_H
