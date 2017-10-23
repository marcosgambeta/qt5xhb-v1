/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "QWinTaskbarProgressSlots.h"


static SlotsQWinTaskbarProgress * s = NULL;

SlotsQWinTaskbarProgress::SlotsQWinTaskbarProgress(QObject *parent) : QObject(parent)
{
}

SlotsQWinTaskbarProgress::~SlotsQWinTaskbarProgress()
{
}

void SlotsQWinTaskbarProgress::valueChanged(int value)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "valueChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvalue = hb_itemPutNI( NULL, value );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvalue );
    hb_itemRelease( psender );
    hb_itemRelease( pvalue );
  }
#endif
}

void SlotsQWinTaskbarProgress::minimumChanged(int minimum)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "minimumChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pminimum = hb_itemPutNI( NULL, minimum );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pminimum );
    hb_itemRelease( psender );
    hb_itemRelease( pminimum );
  }
#endif
}

void SlotsQWinTaskbarProgress::maximumChanged(int maximum)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "maximumChanged(int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmaximum = hb_itemPutNI( NULL, maximum );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmaximum );
    hb_itemRelease( psender );
    hb_itemRelease( pmaximum );
  }
#endif
}

void SlotsQWinTaskbarProgress::visibilityChanged(bool visible)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "visibilityChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pvisible = hb_itemPutL( NULL, visible );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pvisible );
    hb_itemRelease( psender );
    hb_itemRelease( pvisible );
  }
#endif
}

void SlotsQWinTaskbarProgress::pausedChanged(bool paused)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "pausedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ppaused = hb_itemPutL( NULL, paused );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, ppaused );
    hb_itemRelease( psender );
    hb_itemRelease( ppaused );
  }
#endif
}

void SlotsQWinTaskbarProgress::stoppedChanged(bool stopped)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "stoppedChanged(bool)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pstopped = hb_itemPutL( NULL, stopped );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pstopped );
    hb_itemRelease( psender );
    hb_itemRelease( pstopped );
  }
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONVALUECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "valueChanged(int)", "valueChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONMINIMUMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "minimumChanged(int)", "minimumChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONMAXIMUMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "maximumChanged(int)", "maximumChanged(int)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONVISIBILITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "visibilityChanged(bool)", "visibilityChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONPAUSEDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "pausedChanged(bool)", "pausedChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}

HB_FUNC( QWINTASKBARPROGRESS_ONSTOPPEDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  if( s == NULL )
  {
    s = new SlotsQWinTaskbarProgress(QCoreApplication::instance());
  }

  hb_retl( Signals_connection_disconnection ( s, "stoppedChanged(bool)", "stoppedChanged(bool)" ) );
#else
  hb_retl(false);
#endif
}
