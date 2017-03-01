/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QItemSelectionModelSlots.h"


static SlotsQItemSelectionModel * s = NULL;

SlotsQItemSelectionModel::SlotsQItemSelectionModel(QObject *parent) : QObject(parent)
{
}

SlotsQItemSelectionModel::~SlotsQItemSelectionModel()
{
}

void SlotsQItemSelectionModel::selectionChanged(const QItemSelection &selected, const QItemSelection &deselected)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "selectionChanged(QItemSelection,QItemSelection)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pselected = hb_itemPutPtr( NULL, (QItemSelection *) &selected );
    PHB_ITEM pdeselected = hb_itemPutPtr( NULL, (QItemSelection *) &deselected );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pselected, pdeselected );
    hb_itemRelease( psender );
    hb_itemRelease( pselected );
    hb_itemRelease( pdeselected );
  }
}

void SlotsQItemSelectionModel::currentChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQItemSelectionModel::currentRowChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentRowChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

void SlotsQItemSelectionModel::currentColumnChanged(const QModelIndex &current, const QModelIndex &previous)
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "currentColumnChanged(QModelIndex current,QModelIndex previous)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pcurrent = hb_itemPutPtr( NULL, (QModelIndex *) &current );
    PHB_ITEM pprevious = hb_itemPutPtr( NULL, (QModelIndex *) &previous );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, pcurrent, pprevious );
    hb_itemRelease( psender );
    hb_itemRelease( pcurrent );
    hb_itemRelease( pprevious );
  }
}

HB_FUNC( QITEMSELECTIONMODEL_ONSELECTIONCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "selectionChanged(QItemSelection,QItemSelection)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(selectionChanged(QItemSelection,QItemSelection)), s, SLOT(selectionChanged(QItemSelection,QItemSelection)) );
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
    QString signal = "selectionChanged(QItemSelection,QItemSelection)";
    ret = object->disconnect(object, SIGNAL(selectionChanged(QItemSelection,QItemSelection)), s, SLOT(selectionChanged(QItemSelection,QItemSelection)) );
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

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "currentChanged(QModelIndex,QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(currentChanged(QModelIndex,QModelIndex)), s, SLOT(currentChanged(QModelIndex,QModelIndex)) );
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
    QString signal = "currentChanged(QModelIndex,QModelIndex)";
    ret = object->disconnect(object, SIGNAL(currentChanged(QModelIndex,QModelIndex)), s, SLOT(currentChanged(QModelIndex,QModelIndex)) );
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

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTROWCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "currentRowChanged(QModelIndex,QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(currentRowChanged(QModelIndex,QModelIndex)), s, SLOT(currentRowChanged(QModelIndex,QModelIndex)) );
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
    QString signal = "currentRowChanged(QModelIndex,QModelIndex)";
    ret = object->disconnect(object, SIGNAL(currentRowChanged(QModelIndex,QModelIndex)), s, SLOT(currentRowChanged(QModelIndex,QModelIndex)) );
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

HB_FUNC( QITEMSELECTIONMODEL_ONCURRENTCOLUMNCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQItemSelectionModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "currentColumnChanged(QModelIndex,QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(currentColumnChanged(QModelIndex,QModelIndex)), s, SLOT(currentColumnChanged(QModelIndex,QModelIndex)) );
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
    QString signal = "currentColumnChanged(QModelIndex,QModelIndex)";
    ret = object->disconnect(object, SIGNAL(currentColumnChanged(QModelIndex,QModelIndex)), s, SLOT(currentColumnChanged(QModelIndex,QModelIndex)) );
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
