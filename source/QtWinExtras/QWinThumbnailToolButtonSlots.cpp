/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "QWinThumbnailToolButtonSlots.h"

QWinThumbnailToolButtonSlots::QWinThumbnailToolButtonSlots( QObject *parent ) : QObject( parent )
{
}

QWinThumbnailToolButtonSlots::~QWinThumbnailToolButtonSlots()
{
}

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWinThumbnailToolButtonSlots::clicked()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "clicked()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWINTHUMBNAILTOOLBUTTON" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
void QWinThumbnailToolButtonSlots::changed()
{
  QObject *object = qobject_cast<QObject *>(sender());

  PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( object, "changed()" );

  if( cb )
  {
    PHB_ITEM psender = Qt5xHb::Signals_return_qobject( (QObject *) object, "QWINTHUMBNAILTOOLBUTTON" );

    hb_vmEvalBlockV( cb, 1, psender );

    hb_itemRelease( psender );
  }
}
#endif

void QWinThumbnailToolButtonSlots_connect_signal( const QString & signal, const QString & slot )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QWinThumbnailToolButtonSlots * s = QCoreApplication::instance()->findChild<QWinThumbnailToolButtonSlots *>();

    if( s == NULL )
    {
      s = new QWinThumbnailToolButtonSlots();
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
