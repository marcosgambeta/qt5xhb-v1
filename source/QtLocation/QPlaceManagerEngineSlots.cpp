/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QPlaceManagerEngineSlots.hpp"

QPlaceManagerEngineSlots::QPlaceManagerEngineSlots( QObject *parent ) : QObject( parent )
{
}

QPlaceManagerEngineSlots::~QPlaceManagerEngineSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::finished( QPlaceReply * reply )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "finished(QPlaceReply*)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QPLACEREPLY");

    hb_vmEvalBlockV(cb, 2, psender, preply);

    hb_itemRelease(psender);
    hb_itemRelease( preply );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "error(QPlaceReply*,QPlaceReply::Error,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM preply = Qt5xHb::Signals_return_qobject(reply, "QPLACEREPLY");
    PHB_ITEM perror = hb_itemPutNI( NULL, static_cast<int>(error) );
    PHB_ITEM perrorString = hb_itemPutC( NULL, QSTRINGTOSTRING(errorString) );

    hb_vmEvalBlockV(cb, 4, psender, preply, perror, perrorString);

    hb_itemRelease(psender);
    hb_itemRelease( preply );
    hb_itemRelease( perror );
    hb_itemRelease( perrorString );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::placeAdded( const QString & placeId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "placeAdded(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );

    hb_vmEvalBlockV(cb, 2, psender, pplaceId);

    hb_itemRelease(psender);
    hb_itemRelease( pplaceId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::placeUpdated( const QString & placeId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "placeUpdated(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );

    hb_vmEvalBlockV(cb, 2, psender, pplaceId);

    hb_itemRelease(psender);
    hb_itemRelease( pplaceId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::placeRemoved( const QString & placeId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "placeRemoved(QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pplaceId = hb_itemPutC( NULL, QSTRINGTOSTRING(placeId) );

    hb_vmEvalBlockV(cb, 2, psender, pplaceId);

    hb_itemRelease(psender);
    hb_itemRelease( pplaceId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::categoryAdded( const QPlaceCategory & category, const QString & parentCategoryId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "categoryAdded(QPlaceCategory,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pcategory = Qt5xHb::Signals_return_object( (void *) &category, "QPLACECATEGORY");
    PHB_ITEM pparentCategoryId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentCategoryId) );

    hb_vmEvalBlockV(cb, 3, psender, pcategory, pparentCategoryId);

    hb_itemRelease(psender);
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentCategoryId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::categoryUpdated( const QPlaceCategory & category, const QString & parentCategoryId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "categoryUpdated(QPlaceCategory,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pcategory = Qt5xHb::Signals_return_object( (void *) &category, "QPLACECATEGORY");
    PHB_ITEM pparentCategoryId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentCategoryId) );

    hb_vmEvalBlockV(cb, 3, psender, pcategory, pparentCategoryId);

    hb_itemRelease(psender);
    hb_itemRelease( pcategory );
    hb_itemRelease( pparentCategoryId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::categoryRemoved( const QString & categoryId, const QString & parentCategoryId )
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "categoryRemoved(QString,QString)");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");
    PHB_ITEM pcategoryId = hb_itemPutC( NULL, QSTRINGTOSTRING(categoryId) );
    PHB_ITEM pparentCategoryId = hb_itemPutC( NULL, QSTRINGTOSTRING(parentCategoryId) );

    hb_vmEvalBlockV(cb, 3, psender, pcategoryId, pparentCategoryId);

    hb_itemRelease(psender);
    hb_itemRelease( pcategoryId );
    hb_itemRelease( pparentCategoryId );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
void QPlaceManagerEngineSlots::dataChanged()
{
  QObject *object = qobject_cast<QObject*>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock(object, "dataChanged()");

  if( cb != NULL )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject(object, "QPLACEMANAGERENGINE");

    hb_vmEvalBlockV(cb, 1, psender);

    hb_itemRelease(psender);
  }
}
#endif

void QPlaceManagerEngineSlots_connect_signal(const QString & signal, const QString & slot)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    QPlaceManagerEngineSlots * s = QCoreApplication::instance()->findChild<QPlaceManagerEngineSlots*>();

    if( s == NULL )
    {
      s = new QPlaceManagerEngineSlots();
      s->moveToThread(QCoreApplication::instance()->thread());
      s->setParent(QCoreApplication::instance());
    }

    hb_retl(Qt5xHb::Signals_connection_disconnection(s, signal, slot));
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}
