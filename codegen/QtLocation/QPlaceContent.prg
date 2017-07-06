$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPLACESUPPLIER
REQUEST QPLACEUSER
#endif

CLASS QPlaceContent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD type
   METHOD supplier
   METHOD setSupplier
   METHOD user
   METHOD setUser
   METHOD attribution
   METHOD setAttribution

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

#include <QPlaceSupplier>
#include <QPlaceUser>

/*
QPlaceContent()
*/
void QPlaceContent_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * o = new QPlaceContent ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceContent(const QPlaceContent &other)
*/
void QPlaceContent_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * o = new QPlaceContent ( *PQPLACECONTENT(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceContent()
//[2]QPlaceContent(const QPlaceContent &other)

HB_FUNC_STATIC( QPLACECONTENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContent_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENT(1) )
  {
    QPlaceContent_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QPlaceContent::Type type() const
*/
HB_FUNC_STATIC( QPLACECONTENT_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
#endif
}


/*
QPlaceSupplier supplier() const
*/
HB_FUNC_STATIC( QPLACECONTENT_SUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceSupplier * ptr = new QPlaceSupplier( obj->supplier () );
    _qt5xhb_createReturnClass ( ptr, "QPLACESUPPLIER", true );
  }
#endif
}

/*
void setSupplier(const QPlaceSupplier &supplier)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETSUPPLIER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSupplier ( *PQPLACESUPPLIER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QPlaceUser user() const
*/
HB_FUNC_STATIC( QPLACECONTENT_USER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPlaceUser * ptr = new QPlaceUser( obj->user () );
    _qt5xhb_createReturnClass ( ptr, "QPLACEUSER", true );
  }
#endif
}

/*
void setUser(const QPlaceUser &user)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETUSER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setUser ( *PQPLACEUSER(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString attribution() const
*/
HB_FUNC_STATIC( QPLACECONTENT_ATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->attribution () );
  }
#endif
}

/*
void setAttribution(const QString &attribution)
*/
HB_FUNC_STATIC( QPLACECONTENT_SETATTRIBUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContent * obj = (QPlaceContent *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAttribution ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
