$header

#include "hbclass.ch"

CLASS QCollatorSortKey

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD compare

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QCollatorSortKey(const QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_NEW )
{
  if( ISNUMPAR(1) && ISQCOLLATORSORTKEY(1) )
  {
    QCollatorSortKey * o = new QCollatorSortKey ( *PQCOLLATORSORTKEY(1) );
    _qt5xhb_storePointerAndFlag( o, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_SWAP )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQCOLLATORSORTKEY(1) )
    {
      QCollatorSortKey * par1 = (QCollatorSortKey *) _qt5xhb_itemGetPtr(1);
      obj->swap ( *par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int compare(const QCollatorSortKey &key) const
*/
$method=|int|compare|const QCollatorSortKey &

$extraMethods

#pragma ENDDUMP
