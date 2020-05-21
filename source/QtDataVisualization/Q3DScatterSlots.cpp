/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "Q3DScatterSlots.h"

Q3DScatterSlots::Q3DScatterSlots( QObject *parent ) : QObject( parent )
{
}

Q3DScatterSlots::~Q3DScatterSlots()
{
}

void Q3DScatterSlots::axisXChanged( QValue3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "axisXChanged(QValue3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "Q3DSCATTER" );
    PHB_ITEM paxis = Signals_return_qobject( (QObject *) axis, "QVALUE3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DScatterSlots::axisYChanged( QValue3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "axisYChanged(QValue3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "Q3DSCATTER" );
    PHB_ITEM paxis = Signals_return_qobject( (QObject *) axis, "QVALUE3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DScatterSlots::axisZChanged( QValue3DAxis * axis )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "axisZChanged(QValue3DAxis*)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "Q3DSCATTER" );
    PHB_ITEM paxis = Signals_return_qobject( (QObject *) axis, "QVALUE3DAXIS" );

    hb_vmEvalBlockV( cb, 2, psender, paxis );

    hb_itemRelease( psender );
    hb_itemRelease( paxis );
  }
}

void Q3DScatterSlots::selectedSeriesChanged( QScatter3DSeries * series )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "selectedSeriesChanged(QScatter3DSeries*)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "Q3DSCATTER" );
    PHB_ITEM pseries = Signals_return_qobject( (QObject *) series, "QSCATTER3DSERIES" );

    hb_vmEvalBlockV( cb, 2, psender, pseries );

    hb_itemRelease( psender );
    hb_itemRelease( pseries );
  }
}

void Q3DScatterSlots_connect_signal( const QString & signal, const QString & slot )
{
  Q3DScatter * obj = (Q3DScatter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Q3DScatterSlots * s = QCoreApplication::instance()->findChild<Q3DScatterSlots *>();

    if( s == NULL )
    {
      s = new Q3DScatterSlots();
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
