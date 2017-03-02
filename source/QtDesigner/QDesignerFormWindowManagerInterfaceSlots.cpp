/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QDesignerFormWindowManagerInterfaceSlots.h"


static SlotsQDesignerFormWindowManagerInterface * s = NULL;

SlotsQDesignerFormWindowManagerInterface::SlotsQDesignerFormWindowManagerInterface(QObject *parent) : QObject(parent)
{
}

SlotsQDesignerFormWindowManagerInterface::~SlotsQDesignerFormWindowManagerInterface()
{
}

void SlotsQDesignerFormWindowManagerInterface::activeFormWindowChanged ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "activeFormWindowChanged(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowAdded ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowAdded(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

void SlotsQDesignerFormWindowManagerInterface::formWindowRemoved ( QDesignerFormWindowInterface * formWindow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "formWindowRemoved(QDesignerFormWindowInterface*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pformWindow = hb_itemPutPtr( NULL, (QDesignerFormWindowInterface *) formWindow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pformWindow );
    hb_itemRelease( psender );
    hb_itemRelease( pformWindow );
  }
}

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONACTIVEFORMWINDOWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "activeFormWindowChanged(QDesignerFormWindowInterface*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(activeFormWindowChanged(QDesignerFormWindowInterface*)), s, SLOT(activeFormWindowChanged(QDesignerFormWindowInterface*)) );
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
    QString signal = "activeFormWindowChanged(QDesignerFormWindowInterface*)";
    ret = object->disconnect(object, SIGNAL(activeFormWindowChanged(QDesignerFormWindowInterface*)), s, SLOT(activeFormWindowChanged(QDesignerFormWindowInterface*)) );
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

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWADDED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "formWindowAdded(QDesignerFormWindowInterface*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(formWindowAdded(QDesignerFormWindowInterface*)), s, SLOT(formWindowAdded(QDesignerFormWindowInterface*)) );
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
    QString signal = "formWindowAdded(QDesignerFormWindowInterface*)";
    ret = object->disconnect(object, SIGNAL(formWindowAdded(QDesignerFormWindowInterface*)), s, SLOT(formWindowAdded(QDesignerFormWindowInterface*)) );
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

HB_FUNC( QDESIGNERFORMWINDOWMANAGERINTERFACE_ONFORMWINDOWREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQDesignerFormWindowManagerInterface(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "formWindowRemoved(QDesignerFormWindowInterface*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(formWindowRemoved(QDesignerFormWindowInterface*)), s, SLOT(formWindowRemoved(QDesignerFormWindowInterface*)) );
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
    QString signal = "formWindowRemoved(QDesignerFormWindowInterface*)";
    ret = object->disconnect(object, SIGNAL(formWindowRemoved(QDesignerFormWindowInterface*)), s, SLOT(formWindowRemoved(QDesignerFormWindowInterface*)) );
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
