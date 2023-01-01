/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPieSeriesSlots.h"

QPieSeriesSlots::QPieSeriesSlots( QObject *parent ) : QObject( parent )
{
}

QPieSeriesSlots::~QPieSeriesSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::added( QList<QPieSlice*> slices )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "added(QList<QPieSlice*>)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
    PHB_ITEM pslices = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < slices.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QPieSlice *) slices [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pslices, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, pslices );

    hb_itemRelease( psender );
    hb_itemRelease( pslices );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::clicked( QPieSlice * slice )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked(QPieSlice*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_ITEM pslice = Qt5xHb::Signals_return_qobject( (QObject *) slice, "QPIESLICE" );

    hb_vmEvalBlockV( cb, 2, psender, pslice );

    hb_itemRelease( psender );
    hb_itemRelease( pslice );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::countChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "countChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::doubleClicked( QPieSlice * slice )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "doubleClicked(QPieSlice*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_ITEM pslice = Qt5xHb::Signals_return_qobject( (QObject *) slice, "QPIESLICE" );

    hb_vmEvalBlockV( cb, 2, psender, pslice );

    hb_itemRelease( psender );
    hb_itemRelease( pslice );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::hovered( QPieSlice * slice, bool state )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "hovered(QPieSlice*,bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_ITEM pslice = Qt5xHb::Signals_return_qobject( (QObject *) slice, "QPIESLICE" );
    PHB_ITEM pstate = hb_itemPutL( NULL, state );

    hb_vmEvalBlockV( cb, 3, psender, pslice, pstate );

    hb_itemRelease( psender );
    hb_itemRelease( pslice );
    hb_itemRelease( pstate );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::pressed( QPieSlice * slice )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "pressed(QPieSlice*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_ITEM pslice = Qt5xHb::Signals_return_qobject( (QObject *) slice, "QPIESLICE" );

    hb_vmEvalBlockV( cb, 2, psender, pslice );

    hb_itemRelease( psender );
    hb_itemRelease( pslice );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::released( QPieSlice * slice )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "released(QPieSlice*)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_ITEM pslice = Qt5xHb::Signals_return_qobject( (QObject *) slice, "QPIESLICE" );

    hb_vmEvalBlockV( cb, 2, psender, pslice );

    hb_itemRelease( psender );
    hb_itemRelease( pslice );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::removed( QList<QPieSlice*> slices )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "removed(QList<QPieSlice*>)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
    PHB_ITEM pslices = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < slices.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QPieSlice *) slices [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( pslices, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
    }

    hb_vmEvalBlockV( cb, 2, psender, pslices );

    hb_itemRelease( psender );
    hb_itemRelease( pslices );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QPieSeriesSlots::sumChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "sumChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QPIESERIES" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QPieSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QPieSeriesSlots * s = QCoreApplication::instance()->findChild<QPieSeriesSlots *>();

    if( s == NULL )
    {
      s = new QPieSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
