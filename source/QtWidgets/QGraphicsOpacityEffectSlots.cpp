/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QGraphicsOpacityEffectSlots.h"

QGraphicsOpacityEffectSlots::QGraphicsOpacityEffectSlots(QObject *parent) : QObject(parent)
{
}

QGraphicsOpacityEffectSlots::~QGraphicsOpacityEffectSlots()
{
}
void QGraphicsOpacityEffectSlots::opacityChanged( qreal opacity )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGRAPHICSOPACITYEFFECT" );
    PHB_ITEM popacity = hb_itemPutND( NULL, opacity );
    hb_vmEvalBlockV( cb, 2, psender, popacity );
    hb_itemRelease( psender );
    hb_itemRelease( popacity );
  }
}
void QGraphicsOpacityEffectSlots::opacityMaskChanged( const QBrush & mask )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityMaskChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QGRAPHICSOPACITYEFFECT" );
    PHB_ITEM pmask = Signals_return_object( (void *) &mask, "QBRUSH" );
    hb_vmEvalBlockV( cb, 2, psender, pmask );
    hb_itemRelease( psender );
    hb_itemRelease( pmask );
  }
}

void QGraphicsOpacityEffectSlots_connect_signal ( const QString & signal, const QString & slot )
{
  QGraphicsOpacityEffect * obj = (QGraphicsOpacityEffect *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QGraphicsOpacityEffectSlots * s = QCoreApplication::instance()->findChild<QGraphicsOpacityEffectSlots *>();

    if( s == NULL )
    {
      s = new QGraphicsOpacityEffectSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
