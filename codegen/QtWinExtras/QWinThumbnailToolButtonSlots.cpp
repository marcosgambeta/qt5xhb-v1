/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QWinThumbnailToolButtonSlots.h"


static SlotsQWinThumbnailToolButton * s = NULL;

SlotsQWinThumbnailToolButton::SlotsQWinThumbnailToolButton(QObject *parent) : QObject(parent)
{
}

SlotsQWinThumbnailToolButton::~SlotsQWinThumbnailToolButton()
{
}

void SlotsQWinThumbnailToolButton::clicked()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "clicked()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQWinThumbnailToolButton::changed()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "changed()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

HB_FUNC( QWINTHUMBNAILTOOLBUTTON_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinThumbnailToolButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "clicked()", "clicked()" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTHUMBNAILTOOLBUTTON_ONCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinThumbnailToolButton(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "changed()", "changed()" ) );
#else
  hb_retl(false);
#endif
}
