$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QITEMSELECTION
#endif

CLASS QIdentityProxyModel INHERIT QAbstractProxyModel

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD columnCount
   METHOD index
   METHOD mapFromSource
   METHOD mapToSource
   METHOD parent
   METHOD rowCount
   METHOD headerData
   METHOD dropMimeData
   METHOD sibling
   METHOD mapSelectionFromSource
   METHOD mapSelectionToSource
   METHOD match
   METHOD setSourceModel
   METHOD insertColumns
   METHOD insertRows
   METHOD removeColumns
   METHOD removeRows

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QItemSelection>

/*
QIdentityProxyModel(QObject* parent = 0)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QIdentityProxyModel * o = new QIdentityProxyModel ( OPQOBJECT(1,0) );
    _qt5xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int columnCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_COLUMNCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      RINT( obj->columnCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex index(int row, int column, const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INDEX )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

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

/*
QModelIndex mapFromSource(const QModelIndex& sourceIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->mapFromSource ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex mapToSource(const QModelIndex& proxyIndex) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->mapToSource ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndex parent(const QModelIndex& child) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_PARENT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) )
    {
      QModelIndex * ptr = new QModelIndex( obj->parent ( *PQMODELINDEX(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int rowCount(const QModelIndex& parent = QModelIndex()) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_ROWCOUNT )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQMODELINDEX(1)||ISNIL(1)) )
    {
      QModelIndex par1 = ISNIL(1)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(1);
      RINT( obj->rowCount ( par1 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant headerData(int section, Qt::Orientation orientation, int role) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_HEADERDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) )
    {
      QVariant * ptr = new QVariant( obj->headerData ( PINT(1), (Qt::Orientation) hb_parni(2), PINT(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent)
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_DROPMIMEDATA )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

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
QModelIndex sibling(int row, int column, const QModelIndex &idx) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_SIBLING )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
    {
      QModelIndex * ptr = new QModelIndex( obj->sibling ( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
      _qt5xhb_createReturnClass ( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QItemSelection mapSelectionFromSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONFROMSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQITEMSELECTION(1) )
    {
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionFromSource ( *PQITEMSELECTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QItemSelection mapSelectionToSource(const QItemSelection& selection) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MAPSELECTIONTOSOURCE )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQITEMSELECTION(1) )
    {
      QItemSelection * ptr = new QItemSelection( obj->mapSelectionToSource ( *PQITEMSELECTION(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QITEMSELECTION" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits = 1, Qt::MatchFlags flags = Qt::MatchFlags(Qt::MatchStartsWith|Qt::MatchWrap)) const
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_MATCH )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMODELINDEX(1) && ISNUM(2) && ISQVARIANT(3) && ISOPTNUM(4) && ISOPTNUM(5) )
    {
      int par5 = ISNIL(5)? (int) Qt::MatchFlags(Qt::MatchStartsWith | Qt::MatchWrap) : hb_parni(5);
      QModelIndexList list = obj->match ( *PQMODELINDEX(1), PINT(2), *PQVARIANT(3), OPINT(4,1), (Qt::MatchFlags) par5 );
      PHB_DYNS pDynSym;
      #ifdef __XHARBOUR__
      pDynSym = hb_dynsymFind( "QMODELINDEX" );
      #else
      pDynSym = hb_dynsymFindName( "QMODELINDEX" );
      #endif
      PHB_ITEM pArray;
      pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          #ifdef __XHARBOUR__
          hb_vmPushSymbol( pDynSym->pSymbol );
          #else
          hb_vmPushDynSym( pDynSym );
          #endif
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
          hb_itemRelease( pItem );
        }
      }
      hb_itemReturnRelease(pArray);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setSourceModel(QAbstractItemModel* sourceModel)
*/
$method=|void|setSourceModel|QAbstractItemModel *

/*
bool insertColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTCOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->insertColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool insertRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_INSERTROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->insertRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeColumns(int column, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVECOLUMNS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->removeColumns ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool removeRows(int row, int count, const QModelIndex& parent = QModelIndex())
*/
HB_FUNC_STATIC( QIDENTITYPROXYMODEL_REMOVEROWS )
{
  QIdentityProxyModel * obj = (QIdentityProxyModel *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && (ISQMODELINDEX(3)||ISNIL(3)) )
    {
      QModelIndex par3 = ISNIL(3)? QModelIndex() : *(QModelIndex *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->removeRows ( PINT(1), PINT(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
