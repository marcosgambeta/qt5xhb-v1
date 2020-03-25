/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QVPieModelMapperSlots.h"

QVPieModelMapperSlots::QVPieModelMapperSlots(QObject *parent) : QObject(parent)
{
}

QVPieModelMapperSlots::~QVPieModelMapperSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::firstRowChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "firstRowChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::labelsColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "labelsColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::modelReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modelReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::rowCountChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowCountChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::seriesReplaced()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "seriesReplaced()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
void QVPieModelMapperSlots::valuesColumnChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valuesColumnChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QVPIEMODELMAPPER" );
    hb_vmEvalBlockV( cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QVPieModelMapperSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QVPieModelMapper * obj = (QVPieModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QVPieModelMapperSlots * s = QCoreApplication::instance()->findChild<QVPieModelMapperSlots *>();

    if( s == NULL )
    {
      s = new QVPieModelMapperSlots();
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
