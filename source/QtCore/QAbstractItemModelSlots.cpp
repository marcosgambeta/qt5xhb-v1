/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "QAbstractItemModelSlots.h"


static SlotsQAbstractItemModel * s = NULL;

SlotsQAbstractItemModel::SlotsQAbstractItemModel(QObject *parent) : QObject(parent)
{
}

SlotsQAbstractItemModel::~SlotsQAbstractItemModel()
{
}

void SlotsQAbstractItemModel::columnsAboutToBeInserted ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void SlotsQAbstractItemModel::columnsAboutToBeRemoved ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsAboutToBeRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsInserted ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::columnsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationColumn )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationColumn = hb_itemPutNI( NULL, destinationColumn );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationColumn );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationColumn );
  }
}

void SlotsQAbstractItemModel::columnsRemoved ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "columnsRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "dataChanged(QModelIndex,QModelIndex)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM ptopLeft = hb_itemPutPtr( NULL, (QModelIndex *) &topLeft );
    PHB_ITEM pbottomRight = hb_itemPutPtr( NULL, (QModelIndex *) &bottomRight );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 3, psender, ptopLeft, pbottomRight );
    hb_itemRelease( psender );
    hb_itemRelease( ptopLeft );
    hb_itemRelease( pbottomRight );
  }
}

void SlotsQAbstractItemModel::headerDataChanged ( Qt::Orientation orientation, int first, int last )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "headerDataChanged(Qt::Orientation,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM porientation = hb_itemPutNI( NULL, (int) orientation );
    PHB_ITEM pfirst = hb_itemPutNI( NULL, first );
    PHB_ITEM plast = hb_itemPutNI( NULL, last );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, porientation, pfirst, plast );
    hb_itemRelease( psender );
    hb_itemRelease( porientation );
    hb_itemRelease( pfirst );
    hb_itemRelease( plast );
  }
}

void SlotsQAbstractItemModel::layoutAboutToBeChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "layoutAboutToBeChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractItemModel::layoutChanged ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "layoutChanged()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractItemModel::modelAboutToBeReset ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modelAboutToBeReset()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractItemModel::modelReset ()
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "modelReset()" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
     hb_vmEvalBlockV( (PHB_ITEM) cb, 1, psender );
    hb_itemRelease( psender );
  }
}

void SlotsQAbstractItemModel::rowsAboutToBeInserted ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsAboutToBeMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void SlotsQAbstractItemModel::rowsAboutToBeRemoved ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsAboutToBeRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsInserted ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsInserted(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

void SlotsQAbstractItemModel::rowsMoved ( const QModelIndex & sourceParent, int sourceStart, int sourceEnd, const QModelIndex & destinationParent, int destinationRow )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsMoved(QModelIndex,int,int,QModelIndex,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM psourceParent = hb_itemPutPtr( NULL, (QModelIndex *) &sourceParent );
    PHB_ITEM psourceStart = hb_itemPutNI( NULL, sourceStart );
    PHB_ITEM psourceEnd = hb_itemPutNI( NULL, sourceEnd );
    PHB_ITEM pdestinationParent = hb_itemPutPtr( NULL, (QModelIndex *) &destinationParent );
    PHB_ITEM pdestinationRow = hb_itemPutNI( NULL, destinationRow );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 6, psender, psourceParent, psourceStart, psourceEnd, pdestinationParent, pdestinationRow );
    hb_itemRelease( psender );
    hb_itemRelease( psourceParent );
    hb_itemRelease( psourceStart );
    hb_itemRelease( psourceEnd );
    hb_itemRelease( pdestinationParent );
    hb_itemRelease( pdestinationRow );
  }
}

void SlotsQAbstractItemModel::rowsRemoved ( const QModelIndex & parent, int start, int end )
{
  QObject *object = qobject_cast<QObject *>(sender());
  PHB_ITEM cb = Signals_return_codeblock( object, "rowsRemoved(QModelIndex,int,int)" );
  if( cb )
  {
    PHB_ITEM psender = hb_itemPutPtr( NULL, (QObject *) object );
    PHB_ITEM pparent = hb_itemPutPtr( NULL, (QModelIndex *) &parent );
    PHB_ITEM pstart = hb_itemPutNI( NULL, start );
    PHB_ITEM pend = hb_itemPutNI( NULL, end );
    hb_vmEvalBlockV( (PHB_ITEM) cb, 4, psender, pparent, pstart, pend );
    hb_itemRelease( psender );
    hb_itemRelease( pparent );
    hb_itemRelease( pstart );
    hb_itemRelease( pend );
  }
}

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSABOUTTOBEINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsAboutToBeInserted(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsAboutToBeInserted(QModelIndex,int,int)), s, SLOT(columnsAboutToBeInserted(QModelIndex,int,int)) );
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
    QString signal = "columnsAboutToBeInserted(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(columnsAboutToBeInserted(QModelIndex,int,int)), s, SLOT(columnsAboutToBeInserted(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSABOUTTOBEMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)) );
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
    QString signal = "columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)";
    ret = object->disconnect(object, SIGNAL(columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(columnsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSABOUTTOBEREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsAboutToBeRemoved(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsAboutToBeRemoved(QModelIndex,int,int)), s, SLOT(columnsAboutToBeRemoved(QModelIndex,int,int)) );
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
    QString signal = "columnsAboutToBeRemoved(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(columnsAboutToBeRemoved(QModelIndex,int,int)), s, SLOT(columnsAboutToBeRemoved(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsInserted(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsInserted(QModelIndex,int,int)), s, SLOT(columnsInserted(QModelIndex,int,int)) );
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
    QString signal = "columnsInserted(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(columnsInserted(QModelIndex,int,int)), s, SLOT(columnsInserted(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsMoved(QModelIndex,int,int,QModelIndex,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(columnsMoved(QModelIndex,int,int,QModelIndex,int)) );
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
    QString signal = "columnsMoved(QModelIndex,int,int,QModelIndex,int)";
    ret = object->disconnect(object, SIGNAL(columnsMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(columnsMoved(QModelIndex,int,int,QModelIndex,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONCOLUMNSREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "columnsRemoved(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(columnsRemoved(QModelIndex,int,int)), s, SLOT(columnsRemoved(QModelIndex,int,int)) );
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
    QString signal = "columnsRemoved(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(columnsRemoved(QModelIndex,int,int)), s, SLOT(columnsRemoved(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONDATACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "dataChanged(QModelIndex,QModelIndex)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(dataChanged(QModelIndex,QModelIndex)), s, SLOT(dataChanged(QModelIndex,QModelIndex)) );
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
    QString signal = "dataChanged(QModelIndex,QModelIndex)";
    ret = object->disconnect(object, SIGNAL(dataChanged(QModelIndex,QModelIndex)), s, SLOT(dataChanged(QModelIndex,QModelIndex)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONHEADERDATACHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "headerDataChanged(Qt::Orientation,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(headerDataChanged(Qt::Orientation,int,int)), s, SLOT(headerDataChanged(Qt::Orientation,int,int)) );
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
    QString signal = "headerDataChanged(Qt::Orientation,int,int)";
    ret = object->disconnect(object, SIGNAL(headerDataChanged(Qt::Orientation,int,int)), s, SLOT(headerDataChanged(Qt::Orientation,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONLAYOUTABOUTTOBECHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "layoutAboutToBeChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(layoutAboutToBeChanged()), s, SLOT(layoutAboutToBeChanged()) );
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
    QString signal = "layoutAboutToBeChanged()";
    ret = object->disconnect(object, SIGNAL(layoutAboutToBeChanged()), s, SLOT(layoutAboutToBeChanged()) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONLAYOUTCHANGED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "layoutChanged()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(layoutChanged()), s, SLOT(layoutChanged()) );
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
    QString signal = "layoutChanged()";
    ret = object->disconnect(object, SIGNAL(layoutChanged()), s, SLOT(layoutChanged()) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONMODELABOUTTOBERESET )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "modelAboutToBeReset()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(modelAboutToBeReset()), s, SLOT(modelAboutToBeReset()) );
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
    QString signal = "modelAboutToBeReset()";
    ret = object->disconnect(object, SIGNAL(modelAboutToBeReset()), s, SLOT(modelAboutToBeReset()) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONMODELRESET )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "modelReset()";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(modelReset()), s, SLOT(modelReset()) );
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
    QString signal = "modelReset()";
    ret = object->disconnect(object, SIGNAL(modelReset()), s, SLOT(modelReset()) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSABOUTTOBEINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsAboutToBeInserted(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsAboutToBeInserted(QModelIndex,int,int)), s, SLOT(rowsAboutToBeInserted(QModelIndex,int,int)) );
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
    QString signal = "rowsAboutToBeInserted(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(rowsAboutToBeInserted(QModelIndex,int,int)), s, SLOT(rowsAboutToBeInserted(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSABOUTTOBEMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)) );
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
    QString signal = "rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)";
    ret = object->disconnect(object, SIGNAL(rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(rowsAboutToBeMoved(QModelIndex,int,int,QModelIndex,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSABOUTTOBEREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsAboutToBeRemoved(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsAboutToBeRemoved(QModelIndex,int,int)), s, SLOT(rowsAboutToBeRemoved(QModelIndex,int,int)) );
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
    QString signal = "rowsAboutToBeRemoved(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(rowsAboutToBeRemoved(QModelIndex,int,int)), s, SLOT(rowsAboutToBeRemoved(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSINSERTED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsInserted(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsInserted(QModelIndex,int,int)), s, SLOT(rowsInserted(QModelIndex,int,int)) );
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
    QString signal = "rowsInserted(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(rowsInserted(QModelIndex,int,int)), s, SLOT(rowsInserted(QModelIndex,int,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsMoved(QModelIndex,int,int,QModelIndex,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(rowsMoved(QModelIndex,int,int,QModelIndex,int)) );
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
    QString signal = "rowsMoved(QModelIndex,int,int,QModelIndex,int)";
    ret = object->disconnect(object, SIGNAL(rowsMoved(QModelIndex,int,int,QModelIndex,int)), s, SLOT(rowsMoved(QModelIndex,int,int,QModelIndex,int)) );
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

HB_FUNC( QABSTRACTITEMMODEL_ONROWSREMOVED )
{
  if( s == NULL )
  {
    s = new SlotsQAbstractItemModel(QCoreApplication::instance());
  }
  bool ret = false;
  if( hb_pcount() == 1 )
  {
    QObject* object = (QObject*) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
    QString signal = "rowsRemoved(QModelIndex,int,int)";
    bool connected = Signals_is_signal_connected( object, signal );
    if( !connected )
    {
      PHB_ITEM codeblock = hb_itemNew( hb_param( 1, HB_IT_BLOCK | HB_IT_SYMBOL ) );
      if( codeblock )
      {
        ret = object->connect( object, SIGNAL(rowsRemoved(QModelIndex,int,int)), s, SLOT(rowsRemoved(QModelIndex,int,int)) );
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
    QString signal = "rowsRemoved(QModelIndex,int,int)";
    ret = object->disconnect(object, SIGNAL(rowsRemoved(QModelIndex,int,int)), s, SLOT(rowsRemoved(QModelIndex,int,int)) );
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
