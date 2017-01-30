/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMediaGaplessPlaybackControlSlots.h"


static SlotsQMediaGaplessPlaybackControl * s = NULL;

SlotsQMediaGaplessPlaybackControl::SlotsQMediaGaplessPlaybackControl(QObject *parent) : QObject(parent)
{
}

SlotsQMediaGaplessPlaybackControl::~SlotsQMediaGaplessPlaybackControl()
{
}

void SlotsQMediaGaplessPlaybackControl::advancedToNextMedia()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "advancedToNextMedia()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
#endif
}

void SlotsQMediaGaplessPlaybackControl::crossfadeTimeChanged(qreal crossfadeTime)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "crossfadeTimeChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcrossfadeTime = hb_itemPutND( NULL, crossfadeTime );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcrossfadeTime );
    hb_itemRelease( psender );
    hb_itemRelease( pcrossfadeTime );
  }
#endif
}

void SlotsQMediaGaplessPlaybackControl::nextMediaChanged(const QMediaContent & media)
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "nextMediaChanged(QMediaContent)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmedia = hb_itemPutPtr( NULL, (QMediaContent *) &media );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmedia );
    hb_itemRelease( psender );
    hb_itemRelease( pmedia );
  }
#endif
}

HB_FUNC( QMEDIAGAPLESSPLAYBACKCONTROL_ONADVANCEDTONEXTMEDIA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaGaplessPlaybackControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "advancedToNextMedia()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(advancedToNextMedia()), s, SLOT(advancedToNextMedia()) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "advancedToNextMedia()";
    ret = object->disconnect(object, SIGNAL(advancedToNextMedia()), s, SLOT(advancedToNextMedia()) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QMEDIAGAPLESSPLAYBACKCONTROL_ONCROSSFADETIMECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaGaplessPlaybackControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "crossfadeTimeChanged(qreal)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(crossfadeTimeChanged(qreal)), s, SLOT(crossfadeTimeChanged(qreal)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "crossfadeTimeChanged(qreal)";
    ret = object->disconnect(object, SIGNAL(crossfadeTimeChanged(qreal)), s, SLOT(crossfadeTimeChanged(qreal)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

HB_FUNC( QMEDIAGAPLESSPLAYBACKCONTROL_ONNEXTMEDIACHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQMediaGaplessPlaybackControl(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "nextMediaChanged(QMediaContent)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(nextMediaChanged(QMediaContent)), s, SLOT(nextMediaChanged(QMediaContent)) );
        if( ret )
        {
          Signals_connect_signal( object, signal, codeblock ); // se conectado, adiciona
          hb_retl(ret);
        }
        else
        {
          hb_itemRelease( codeblock );
          hb_retl(ret);
        }
      }
      else
      {
        hb_retl(false);
      }
    }
    else
    {
      hb_retl(false);
    }
  }
  else if( hb_pcount() == 0 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "nextMediaChanged(QMediaContent)";
    ret = object->disconnect(object, SIGNAL(nextMediaChanged(QMediaContent)), s, SLOT(nextMediaChanged(QMediaContent)) );
    if( ret )
    {
      Signals_disconnect_signal( object, signal );
      hb_retl(true);
    }
    else
    {
      hb_retl(false);
    }
  }
  else
  {
    hb_retl(false);
  }
#else
  hb_retl(false);
#endif
}

