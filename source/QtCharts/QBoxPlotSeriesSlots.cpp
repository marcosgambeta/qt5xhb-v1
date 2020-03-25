/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QBoxPlotSeriesSlots.h"

QBoxPlotSeriesSlots::QBoxPlotSeriesSlots(QObject *parent) : QObject(parent)
{
}

QBoxPlotSeriesSlots::~QBoxPlotSeriesSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::boxOutlineVisibilityChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "boxOutlineVisibilityChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::boxsetsAdded( QList<QBoxSet*> sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "boxsetsAdded(QList<QBoxSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < sets.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QBoxSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_vmEvalBlockV( cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::boxsetsRemoved( QList<QBoxSet*> sets )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "boxsetsRemoved(QList<QBoxSet*>)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBOXSET" );
    PHB_ITEM psets = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( int i = 0; i < sets.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pTempObject = hb_itemNew( NULL );
        hb_itemCopy( pTempObject, hb_stackReturnItem() );
        PHB_ITEM pTempItem = hb_itemNew( NULL );
        hb_itemPutPtr( pTempItem, (QBoxSet *) sets [i] );
        hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
        hb_arrayAddForward( psets, pTempObject );
        hb_itemRelease( pTempObject );
        hb_itemRelease( pTempItem );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBOXSET", HB_ERR_ARGS_BASEPARAMS );
    }
    hb_vmEvalBlockV( cb, 2, psender, psets );
    hb_itemRelease( psender );
    hb_itemRelease( psets );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::boxWidthChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "boxWidthChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::brushChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "brushChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::clicked( QBoxSet * boxset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked(QBoxSet*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_ITEM pboxset = Signals_return_qobject( (QObject *) boxset, "QBOXSET" );
    hb_vmEvalBlockV( cb, 2, psender, pboxset );
    hb_itemRelease( psender );
    hb_itemRelease( pboxset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::countChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "countChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::doubleClicked( QBoxSet * boxset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "doubleClicked(QBoxSet*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_ITEM pboxset = Signals_return_qobject( (QObject *) boxset, "QBOXSET" );
    hb_vmEvalBlockV( cb, 2, psender, pboxset );
    hb_itemRelease( psender );
    hb_itemRelease( pboxset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::hovered( bool status, QBoxSet * boxset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "hovered(bool,QBoxSet*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_ITEM pstatus = hb_itemPutL( NULL, status );
    PHB_ITEM pboxset = Signals_return_qobject( (QObject *) boxset, "QBOXSET" );
    hb_vmEvalBlockV( cb, 3, psender, pstatus, pboxset );
    hb_itemRelease( psender );
    hb_itemRelease( pstatus );
    hb_itemRelease( pboxset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::penChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "penChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::pressed( QBoxSet * boxset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pressed(QBoxSet*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_ITEM pboxset = Signals_return_qobject( (QObject *) boxset, "QBOXSET" );
    hb_vmEvalBlockV( cb, 2, psender, pboxset );
    hb_itemRelease( psender );
    hb_itemRelease( pboxset );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QBoxPlotSeriesSlots::released( QBoxSet * boxset )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "released(QBoxSet*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QBOXPLOTSERIES" );
    PHB_ITEM pboxset = Signals_return_qobject( (QObject *) boxset, "QBOXSET" );
    hb_vmEvalBlockV( cb, 2, psender, pboxset );
    hb_itemRelease( psender );
    hb_itemRelease( pboxset );
  }
}
#endif

void QBoxPlotSeriesSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QBoxPlotSeries * obj = (QBoxPlotSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QBoxPlotSeriesSlots * s = QCoreApplication::instance()->findChild<QBoxPlotSeriesSlots *>();

    if( s == NULL )
    {
      s = new QBoxPlotSeriesSlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}
