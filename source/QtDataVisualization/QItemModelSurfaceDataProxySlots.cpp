/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemModelSurfaceDataProxySlots.h"

QItemModelSurfaceDataProxySlots::QItemModelSurfaceDataProxySlots( QObject *parent ) : QObject( parent )
{
}

QItemModelSurfaceDataProxySlots::~QItemModelSurfaceDataProxySlots()
{
}

void QItemModelSurfaceDataProxySlots::autoColumnCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "autoColumnCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelSurfaceDataProxySlots::autoRowCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "autoRowCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelSurfaceDataProxySlots::columnCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnCategoriesChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QItemModelSurfaceDataProxySlots::columnRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelSurfaceDataProxySlots::columnRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelSurfaceDataProxySlots::columnRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "columnRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelSurfaceDataProxySlots::itemModelChanged( const QAbstractItemModel * itemModel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "itemModelChanged(QAbstractItemModel)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM pitemModel = Signals_return_qobject( (QObject *) itemModel, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 2, psender, pitemModel );

    hb_itemRelease( psender );
    hb_itemRelease( pitemModel );
  }
}

void QItemModelSurfaceDataProxySlots::multiMatchBehaviorChanged( QItemModelSurfaceDataProxy::MultiMatchBehavior behavior )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "multiMatchBehaviorChanged(QItemModelSurfaceDataProxy::MultiMatchBehavior)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM pbehavior = hb_itemPutNI( NULL, (int) behavior );

    hb_vmEvalBlockV( cb, 2, psender, pbehavior );

    hb_itemRelease( psender );
    hb_itemRelease( pbehavior );
  }
}

void QItemModelSurfaceDataProxySlots::rowCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowCategoriesChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QItemModelSurfaceDataProxySlots::rowRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelSurfaceDataProxySlots::rowRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelSurfaceDataProxySlots::rowRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "rowRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelSurfaceDataProxySlots::useModelCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "useModelCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelSurfaceDataProxySlots::xPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelSurfaceDataProxySlots::xPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelSurfaceDataProxySlots::xPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "xPosRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelSurfaceDataProxySlots::yPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelSurfaceDataProxySlots::yPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelSurfaceDataProxySlots::yPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "yPosRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelSurfaceDataProxySlots::zPosRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelSurfaceDataProxySlots::zPosRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelSurfaceDataProxySlots::zPosRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "zPosRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QITEMMODELSURFACEDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelSurfaceDataProxySlots_connect_signal( const QString & signal, const QString & slot )
{
  QItemModelSurfaceDataProxy * obj = (QItemModelSurfaceDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemModelSurfaceDataProxySlots * s = QCoreApplication::instance()->findChild<QItemModelSurfaceDataProxySlots *>();

    if( s == NULL )
    {
      s = new QItemModelSurfaceDataProxySlots();
      s->moveToThread( QCoreApplication::instance()->thread() );
      s->setParent( QCoreApplication::instance() );
    }

    hb_retl( Qt5xHb::Signals_connection_disconnection( s, signal, slot ) );
  }
  else
  {
    hb_retl( false );
  }
}
