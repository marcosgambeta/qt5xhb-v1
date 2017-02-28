/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QMdiAreaSlots.h"


static SlotsQMdiArea * s = NULL;

SlotsQMdiArea::SlotsQMdiArea(QObject *parent) : QObject(parent)
{
}

SlotsQMdiArea::~SlotsQMdiArea()
{
}

void SlotsQMdiArea::subWindowActivated ( QMdiSubWindow * window )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "subWindowActivated(QMdiSubWindow*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pwindow = hb_itemPutPtr( NULL, (QMdiSubWindow *) window );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pwindow );
    hb_itemRelease( psender );
    hb_itemRelease( pwindow );
  }
}

HB_FUNC( QMDIAREA_ONSUBWINDOWACTIVATED )
{
  if( s == NULL )
  {
    s = new SlotsQMdiArea(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "subWindowActivated(QMdiSubWindow*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(subWindowActivated(QMdiSubWindow*)), s, SLOT(subWindowActivated(QMdiSubWindow*)) );
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
    QString signal = "subWindowActivated(QMdiSubWindow*)";
    ret = object->disconnect(object, SIGNAL(subWindowActivated(QMdiSubWindow*)), s, SLOT(subWindowActivated(QMdiSubWindow*)) );
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
}
