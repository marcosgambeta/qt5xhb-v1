/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QGraphicsOpacityEffectSlots.h"


static SlotsQGraphicsOpacityEffect * s = NULL;

SlotsQGraphicsOpacityEffect::SlotsQGraphicsOpacityEffect(QObject *parent) : QObject(parent)
{
}

SlotsQGraphicsOpacityEffect::~SlotsQGraphicsOpacityEffect()
{
}

void SlotsQGraphicsOpacityEffect::opacityChanged ( qreal opacity )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityChanged(qreal)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM popacity = hb_itemPutND( NULL, opacity );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, popacity );
    hb_itemRelease( psender );
    hb_itemRelease( popacity );
  }
#endif
}

void SlotsQGraphicsOpacityEffect::opacityMaskChanged ( const QBrush & mask )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "opacityMaskChanged(QBrush)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pmask = hb_itemPutPtr( NULL, (QBrush *) &mask );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pmask );
    hb_itemRelease( psender );
    hb_itemRelease( pmask );
  }
#endif
}

HB_FUNC( QGRAPHICSOPACITYEFFECT_ONOPACITYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsOpacityEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "opacityChanged(qreal)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(opacityChanged(qreal)), s, SLOT(opacityChanged(qreal)) );
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
    QString signal = "opacityChanged(qreal)";
    ret = object->disconnect(object, SIGNAL(opacityChanged(qreal)), s, SLOT(opacityChanged(qreal)) );
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

HB_FUNC( QGRAPHICSOPACITYEFFECT_ONOPACITYMASKCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  if( s == NULL )
  {
    s = new SlotsQGraphicsOpacityEffect(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "opacityMaskChanged(QBrush)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(opacityMaskChanged(QBrush)), s, SLOT(opacityMaskChanged(QBrush)) );
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
    QString signal = "opacityMaskChanged(QBrush)";
    ret = object->disconnect(object, SIGNAL(opacityMaskChanged(QBrush)), s, SLOT(opacityMaskChanged(QBrush)) );
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

