/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPlaceManagerSlots.h"

static QPlaceManagerSlots * s = NULL;

QPlaceManagerSlots::QPlaceManagerSlots(QObject *parent) : QObject(parent)
{
}

QPlaceManagerSlots::~QPlaceManagerSlots()
{
}
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::finished( QPlaceReply * reply )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "finished(QPlaceReply*)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QPLACEREPLY" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, preply );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "error(QPlaceReply*,QPlaceReply::Error,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM preply = Signals_return_qobject( (QObject *) reply, "QPLACEREPLY" );
    PHB_ITEM perror = hb_itemPutNI( NULL, (int) error );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, preply, perror, perrorString );
    hb_itemRelease( psender );
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::placeAdded( const QString & placeId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeAdded(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::placeUpdated( const QString & placeId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeUpdated(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::placeRemoved( const QString & placeId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "placeRemoved(QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pplaceId );
    hb_itemRelease( psender );
    hb_itemRelease( pplaceId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::categoryAdded( const QPlaceCategory & category, const QString & parentId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryAdded(QPlaceCategory,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pcategory = Signals_return_object( (void *) &category, "QPLACECATEGORY" );
    PHB_ITEM pparentId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategory, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::categoryUpdated( const QPlaceCategory & category, const QString & parentId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryUpdated(QPlaceCategory,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pcategory = Signals_return_object( (void *) &category, "QPLACECATEGORY" );
    PHB_ITEM pparentId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategory, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::categoryRemoved( const QString & categoryId, const QString & parentId )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "categoryRemoved(QString,QString)" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    PHB_ITEM pcategoryId = hb_itemPutC( NULL, QSTRINGTOSTRING(categoryId) );
    PHB_ITEM pparentId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentId) );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcategoryId, pparentId );
    hb_itemRelease( psender );
    hb_itemRelease( pcategoryId );
    hb_itemRelease( pparentId );
  }
}
#endif
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerSlots::dataChanged()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataChanged()" );
  if( cb )
  {
    PHB_ITEM psender = Signals_return_qobject ( (QObject *) object, "QPLACEMANAGER" );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}
#endif

void QPlaceManagerSlots_connect_signal ( const QString & signal, const QString & slot )
{
  if( s == NULL )
  {
    s = new QPlaceManagerSlots( QCoreApplication::instance() );
  }

  hb_retl( Signals_connection_disconnection( s, signal, slot ) );
}
