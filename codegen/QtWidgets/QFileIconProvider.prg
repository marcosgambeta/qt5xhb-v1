$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QFileIconProvider

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD type

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
QFileIconProvider()
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_NEW )
{
  QFileIconProvider * o = new QFileIconProvider ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
virtual QIcon icon(IconType type) const
*/
void QFileIconProvider_icon1 ()
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon ( (QFileIconProvider::IconType) hb_parni(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
virtual QIcon icon(const QFileInfo & info) const
*/
void QFileIconProvider_icon2 ()
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon ( *PQFILEINFO(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC_STATIC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFileIconProvider_icon1();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileIconProvider_icon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString type(const QFileInfo & info) const
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_TYPE )
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->type ( *PQFILEINFO(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
