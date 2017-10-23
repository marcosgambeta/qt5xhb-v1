/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QSystemTrayIconSlots.h"


static SlotsQSystemTrayIcon * s = NULL;

SlotsQSystemTrayIcon::SlotsQSystemTrayIcon(QObject *parent) : QObject(parent)
{
}

SlotsQSystemTrayIcon::~SlotsQSystemTrayIcon()
{
}

void SlotsQSystemTrayIcon::activated(QSystemTrayIcon::ActivationReason reason)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activated(QSystemTrayIcon::ActivationReason)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM preason = hb_itemPutNI( NULL, (int) reason );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preason );
    hb_itemRelease( psender );
    hb_itemRelease( preason );
  }
}

void SlotsQSystemTrayIcon::messageClicked()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "messageClicked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

HB_FUNC( QSYSTEMTRAYICON_ONACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQSystemTrayIcon(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "activated(QSystemTrayIcon::ActivationReason)", "activated(QSystemTrayIcon::ActivationReason)" ) );
}

HB_FUNC( QSYSTEMTRAYICON_ONMESSAGECLICKED )
{
  if( s == NULL )
  {
    s = new SlotsQSystemTrayIcon(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "messageClicked()", "messageClicked()" ) );
}
