/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsBlurEffectSlots.h"


static SlotsQGraphicsBlurEffect * s = NULL;

SlotsQGraphicsBlurEffect::SlotsQGraphicsBlurEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsBlurEffect::~SlotsQGraphicsBlurEffect()
{
}

void SlotsQGraphicsBlurEffect::blurHintsChanged ( QGraphicsBlurEffect::BlurHints hints )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurHintsChanged(QGraphicsBlurEffect::BlurHints)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM phints = hb_itemPutNI( NULL, (int) hints );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, phints );
    hb_itemRelease( psender );
    hb_itemRelease( phints );
  }
#endif
}

void SlotsQGraphicsBlurEffect::blurRadiusChanged ( qreal radius )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pradius = hb_itemPutND( NULL, radius );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pradius );
    hb_itemRelease( psender );
    hb_itemRelease( pradius );
  }
#endif
}

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURHINTSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsBlurEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "blurHintsChanged(QGraphicsBlurEffect::BlurHints)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(blurHintsChanged(QGraphicsBlurEffect::BlurHints)), s, SLOT(blurHintsChanged(QGraphicsBlurEffect::BlurHints)) );
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
    QString signal = "blurHintsChanged(QGraphicsBlurEffect::BlurHints)";
    ret = object->disconnect(object, SIGNAL(blurHintsChanged(QGraphicsBlurEffect::BlurHints)), s, SLOT(blurHintsChanged(QGraphicsBlurEffect::BlurHints)) );
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

HB_FUNC( QGRAPHICSBLUREFFECT_ONBLURRADIUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsBlurEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "blurRadiusChanged(qreal)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(blurRadiusChanged(qreal)), s, SLOT(blurRadiusChanged(qreal)) );
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
    QString signal = "blurRadiusChanged(qreal)";
    ret = object->disconnect(object, SIGNAL(blurRadiusChanged(qreal)), s, SLOT(blurRadiusChanged(qreal)) );
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

