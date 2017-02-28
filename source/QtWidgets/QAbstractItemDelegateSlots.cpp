/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAbstractItemDelegateSlots.h"


static SlotsQAbstractItemDelegate * s = NULL;

SlotsQAbstractItemDelegate::SlotsQAbstractItemDelegate(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractItemDelegate::~SlotsQAbstractItemDelegate()
{
}

void SlotsQAbstractItemDelegate::closeEditor ( QWidget * editor, QAbstractItemDelegate::EndEditHint hint )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM peditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    PHB_ITEM phint = hb_itemPutNI( NULL, (int) hint );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, peditor, phint );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
    hb_itemRelease( phint );
  }
}

void SlotsQAbstractItemDelegate::commitData ( QWidget * editor )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "commitData(QWidget*)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM peditor = hb_itemPutPtr( NULL, (QWidget *) editor );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, peditor );
    hb_itemRelease( psender );
    hb_itemRelease( peditor );
  }
}

void SlotsQAbstractItemDelegate::sizeHintChanged ( const QModelIndex & index )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "sizeHintChanged(QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pindex = hb_itemPutPtr( NULL, (QModelIndex *) &index );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 2, psender, pindex );
    hb_itemRelease( psender );
    hb_itemRelease( pindex );
  }
}

HB_FUNC( QABSTRACTITEMDELEGATE_ONCLOSEEDITOR )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)), s, SLOT(closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)) );
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
    QString signal = "closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)";
    ret = object->disconnect(object, SIGNAL(closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)), s, SLOT(closeEditor(QWidget*,QAbstractItemDelegate::EndEditHint)) );
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

HB_FUNC( QABSTRACTITEMDELEGATE_ONCOMMITDATA )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "commitData(QWidget*)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(commitData(QWidget*)), s, SLOT(commitData(QWidget*)) );
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
    QString signal = "commitData(QWidget*)";
    ret = object->disconnect(object, SIGNAL(commitData(QWidget*)), s, SLOT(commitData(QWidget*)) );
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

HB_FUNC( QABSTRACTITEMDELEGATE_ONSIZEHINTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemDelegate(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "sizeHintChanged(QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(sizeHintChanged(QModelIndex)), s, SLOT(sizeHintChanged(QModelIndex)) );
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
    QString signal = "sizeHintChanged(QModelIndex)";
    ret = object->disconnect(object, SIGNAL(sizeHintChanged(QModelIndex)), s, SLOT(sizeHintChanged(QModelIndex)) );
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
