$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QAbstractTableModel INHERIT QAbstractItemModel

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD dropMimeData
   METHOD index

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool dropMimeData ( const QMimeData * data, Qt::DropAction action, int row, int column, const QModelIndex & parent )
*/
HB_FUNC_STATIC( QABSTRACTTABLEMODEL_DROPMIMEDATA )
{
  QAbstractTableModel * obj = (QAbstractTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMIMEDATA(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISQMODELINDEX(5) )
    {
      const QMimeData * par1 = (const QMimeData *) _qt5xhb_itemGetPtr(1);
      RBOOL( obj->dropMimeData ( par1, (Qt::DropAction) hb_parni(2), PINT(3), PINT(4), *PQMODELINDEX(5) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual QModelIndex index ( int row, int column, const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QABSTRACTTABLEMODEL_INDEX )
{
  QAbstractTableModel * obj = (QAbstractTableModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      QModelIndex * ptr = new QModelIndex( obj->index ( PINT(1), PINT(2), par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
