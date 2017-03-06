/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QLabelSlots.h"


static SlotsQLabel * s = NULL;

SlotsQLabel::SlotsQLabel(QObject *parent) : QObject(parent)
{
}

SlotsQLabel::~SlotsQLabel()
{
}

void SlotsQLabel::linkActivated ( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkActivated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, (const char *) link.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

void SlotsQLabel::linkHovered ( const QString & link )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "linkHovered(QString)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM plink = hb_itemPutC( NULL, (const char *) link.toLatin1().data() );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, plink );
    hb_itemRelease( psender );
    hb_itemRelease( plink );
  }
}

HB_FUNC( QLABEL_ONLINKACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQLabel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkActivated(QString)", "linkActivated(QString)" ) );
}

HB_FUNC( QLABEL_ONLINKHOVERED )
{
  if( s == NULL )
  {
    s = new SlotsQLabel(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "linkHovered(QString)", "linkHovered(QString)" ) );
}
