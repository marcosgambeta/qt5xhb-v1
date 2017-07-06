$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QPLACEICON
#endif

CLASS QPlaceSupplier

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD setName
   METHOD supplierId
   METHOD setSupplierId
   METHOD url
   METHOD setUrl
   METHOD icon
   METHOD setIcon
   METHOD isEmpty

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,4,0

/*
QPlaceSupplier()
*/
void QPlaceSupplier_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * o = new QPlaceSupplier ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceSupplier(const QPlaceSupplier &other)
*/
void QPlaceSupplier_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * o = new QPlaceSupplier ( *PQPLACESUPPLIER(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceSupplier()
//[2]QPlaceSupplier(const QPlaceSupplier &other)

HB_FUNC_STATIC( QPLACESUPPLIER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceSupplier_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACESUPPLIER(1) )
  {
    QPlaceSupplier_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QString name() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_NAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
#endif
}

/*
void setName(const QString &data)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString supplierId() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SUPPLIERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->supplierId () );
  }
#endif
}

/*
void setSupplierId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETSUPPLIERID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSupplierId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QUrl url() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_URL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->url () );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
#endif
}

/*
void setUrl(const QUrl &data)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUrl ( *PQURL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceIcon icon() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceIcon * ptr = new QPlaceIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEICON", true );
  }
#endif
}

/*
void setIcon(const QPlaceIcon &icon)
*/
HB_FUNC_STATIC( QPLACESUPPLIER_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setIcon ( *PQPLACEICON(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QPLACESUPPLIER_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceSupplier * obj = (QPlaceSupplier *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
#endif
}



$extraMethods

#pragma ENDDUMP
