/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsDropShadowEffectSlots.h"


static SlotsQGraphicsDropShadowEffect * s = NULL;

SlotsQGraphicsDropShadowEffect::SlotsQGraphicsDropShadowEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsDropShadowEffect::~SlotsQGraphicsDropShadowEffect()
{
}

void SlotsQGraphicsDropShadowEffect::blurRadiusChanged ( qreal blurRadius )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "blurRadiusChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pblurRadius = hb_itemPutND( NULL, blurRadius );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pblurRadius );
    hb_itemRelease( psender );
    hb_itemRelease( pblurRadius );
  }
#endif
}

void SlotsQGraphicsDropShadowEffect::colorChanged ( const QColor & color )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "colorChanged(QColor)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcolor = hb_itemPutPtr( NULL, (QColor *) &color );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pcolor );
    hb_itemRelease( psender );
    hb_itemRelease( pcolor );
  }
#endif
}

void SlotsQGraphicsDropShadowEffect::offsetChanged ( const QPointF & offset )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "offsetChanged(QPointF)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM poffset = hb_itemPutPtr( NULL, (QPointF *) &offset );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, poffset );
    hb_itemRelease( psender );
    hb_itemRelease( poffset );
  }
#endif
}

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONBLURRADIUSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
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

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONCOLORCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "colorChanged(QColor)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(colorChanged(QColor)), s, SLOT(colorChanged(QColor)) );
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
    QString signal = "colorChanged(QColor)";
    ret = object->disconnect(object, SIGNAL(colorChanged(QColor)), s, SLOT(colorChanged(QColor)) );
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

HB_FUNC( QGRAPHICSDROPSHADOWEFFECT_ONOFFSETCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsDropShadowEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "offsetChanged(QPointF)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(offsetChanged(QPointF)), s, SLOT(offsetChanged(QPointF)) );
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
    QString signal = "offsetChanged(QPointF)";
    ret = object->disconnect(object, SIGNAL(offsetChanged(QPointF)), s, SLOT(offsetChanged(QPointF)) );
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

