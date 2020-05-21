/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QItemModelBarDataProxySlots.h"

QItemModelBarDataProxySlots::QItemModelBarDataProxySlots( QObject *parent ) : QObject( parent )
{
}

QItemModelBarDataProxySlots::~QItemModelBarDataProxySlots()
{
}

void QItemModelBarDataProxySlots::autoColumnCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "autoColumnCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelBarDataProxySlots::autoRowCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "autoRowCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelBarDataProxySlots::columnCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "columnCategoriesChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QItemModelBarDataProxySlots::columnRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "columnRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelBarDataProxySlots::columnRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "columnRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelBarDataProxySlots::columnRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "columnRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelBarDataProxySlots::itemModelChanged( const QAbstractItemModel * itemModel )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "itemModelChanged(QAbstractItemModel)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM pitemModel = Signals_return_qobject( (QObject *) itemModel, "QABSTRACTITEMMODEL" );

    hb_vmEvalBlockV( cb, 2, psender, pitemModel );

    hb_itemRelease( psender );
    hb_itemRelease( pitemModel );
  }
}

void QItemModelBarDataProxySlots::multiMatchBehaviorChanged( QItemModelBarDataProxy::MultiMatchBehavior behavior )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "multiMatchBehaviorChanged(QItemModelBarDataProxy::MultiMatchBehavior)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM pbehavior = hb_itemPutNI( NULL, (int) behavior );

    hb_vmEvalBlockV( cb, 2, psender, pbehavior );

    hb_itemRelease( psender );
    hb_itemRelease( pbehavior );
  }
}

void QItemModelBarDataProxySlots::rotationRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelBarDataProxySlots::rotationRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelBarDataProxySlots::rotationRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rotationRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelBarDataProxySlots::rowCategoriesChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rowCategoriesChanged()" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}

void QItemModelBarDataProxySlots::rowRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rowRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelBarDataProxySlots::rowRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rowRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelBarDataProxySlots::rowRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "rowRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelBarDataProxySlots::useModelCategoriesChanged( bool enable )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "useModelCategoriesChanged(bool)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM penable = hb_itemPutL( NULL, enable );

    hb_vmEvalBlockV( cb, 2, psender, penable );

    hb_itemRelease( psender );
    hb_itemRelease( penable );
  }
}

void QItemModelBarDataProxySlots::valueRoleChanged( const QString & role )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "valueRoleChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM prole = hb_itemPutC( NULL, QSTRINGTOSTRING(role) );

    hb_vmEvalBlockV( cb, 2, psender, prole );

    hb_itemRelease( psender );
    hb_itemRelease( prole );
  }
}

void QItemModelBarDataProxySlots::valueRolePatternChanged( const QRegExp & pattern )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "valueRolePatternChanged(QRegExp)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM ppattern = Signals_return_object( (void *) &pattern, "QREGEXP" );

    hb_vmEvalBlockV( cb, 2, psender, ppattern );

    hb_itemRelease( psender );
    hb_itemRelease( ppattern );
  }
}

void QItemModelBarDataProxySlots::valueRoleReplaceChanged( const QString & replace )
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Signals_return_codeblock( object, "valueRoleReplaceChanged(QString)" );

  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject( (QObject *) object, "QITEMMODELBARDATAPROXY" );
    PHB_ITEM preplace = hb_itemPutC( NULL, QSTRINGTOSTRING(replace) );

    hb_vmEvalBlockV( cb, 2, psender, preplace );

    hb_itemRelease( psender );
    hb_itemRelease( preplace );
  }
}

void QItemModelBarDataProxySlots_connect_signal( const QString & signal, const QString & slot )
{
  QItemModelBarDataProxy * obj = (QItemModelBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QItemModelBarDataProxySlots * s = QCoreApplication::instance()->findChild<QItemModelBarDataProxySlots *>();

    if( s == NULL )
    {
      s = new QItemModelBarDataProxySlots();
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
