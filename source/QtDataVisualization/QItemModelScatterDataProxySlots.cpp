/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemModelScatterDataProxySlots.h"

QItemModelScatterDataProxySlots::QItemModelScatterDataProxySlots( QObject *parent ) : QObject( parent )
{
}

QItemModelScatterDataProxySlots::~QItemModelScatterDataProxySlots()
{
}

void QItemModelScatterDataProxySlots::itemModelChanged( const QAbstractItemModel * itemModel )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemModelChanged(QAbstractItemModel)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM pitemModel = Qt5xHb::Signals_return_qobject(const_cast<QAbstractItemModel*>(itemModel), "QABSTRACTITEMMODEL");

    hb_vmEvalBlockV( cb, 2, psender, pitemModel );

    hb_itemRelease( psender );
    hb_itemRelease( pitemModel );
  }
}

void QItemModelScatterDataProxySlots::rotationRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rotationRoleChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelScatterDataProxySlots::rotationRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rotationRolePatternChanged(QRegExp)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM ppattern = Qt5xHb::Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelScatterDataProxySlots::rotationRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rotationRoleReplaceChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelScatterDataProxySlots::xPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRoleChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelScatterDataProxySlots::xPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRolePatternChanged(QRegExp)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM ppattern = Qt5xHb::Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelScatterDataProxySlots::xPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRoleReplaceChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelScatterDataProxySlots::yPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRoleChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelScatterDataProxySlots::yPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRolePatternChanged(QRegExp)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM ppattern = Qt5xHb::Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelScatterDataProxySlots::yPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRoleReplaceChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelScatterDataProxySlots::zPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRoleChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelScatterDataProxySlots::zPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRolePatternChanged(QRegExp)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM ppattern = Qt5xHb::Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelScatterDataProxySlots::zPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRoleReplaceChanged(QString)" );

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QITEMMODELSCATTERDATAPROXY");
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelScatterDataProxySlots_connect_signal( const QString & signal, const QString & slot )
{
  QItemModelScatterDataProxy * obj = (QItemModelScatterDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QItemModelScatterDataProxySlots * s = QCoreApplication::instance()->findChild<QItemModelScatterDataProxySlots*>();

    if( s == NULL )
    {
      s = new QItemModelScatterDataProxySlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
}
