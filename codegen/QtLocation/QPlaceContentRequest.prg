$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QPlaceContentRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD contentType
   METHOD setContentType
   METHOD placeId
   METHOD setPlaceId
   METHOD contentContext
   METHOD setContentContext
   METHOD limit
   METHOD setLimit
   METHOD clear

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

#include <QVariant>

/*
QPlaceContentRequest()
*/
void QPlaceContentRequest_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * o = new QPlaceContentRequest ();
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}

/*
QPlaceContentRequest(const QPlaceContentRequest &other)
*/
void QPlaceContentRequest_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * o = new QPlaceContentRequest ( *PQPLACECONTENTREQUEST(1) );
  _qt5xhb_storePointerAndFlag( o, true );
#endif
}


//[1]QPlaceContentRequest()
//[2]QPlaceContentRequest(const QPlaceContentRequest &other)

HB_FUNC_STATIC( QPLACECONTENTREQUEST_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPlaceContentRequest_new1();
  }
  else if( ISNUMPAR(1) && ISQPLACECONTENTREQUEST(1) )
  {
    QPlaceContentRequest_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,4,0

/*
QPlaceContent::Type contentType() const
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_CONTENTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->contentType () );
  }
#endif
}

/*
void setContentType(QPlaceContent::Type type)
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_SETCONTENTTYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentType ( (QPlaceContent::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString placeId() const
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_PLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->placeId () );
  }
#endif
}

/*
void setPlaceId(const QString &identifier)
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_SETPLACEID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPlaceId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QVariant contentContext() const
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_CONTENTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->contentContext () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
#endif
}

/*
void setContentContext(const QVariant &context)
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_SETCONTENTCONTEXT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentContext ( *PQVARIANT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
int limit() const
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_LIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->limit () );
  }
#endif
}

/*
void setLimit(int limit)
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_SETLIMIT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLimit ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void clear()
*/
HB_FUNC_STATIC( QPLACECONTENTREQUEST_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceContentRequest * obj = (QPlaceContentRequest *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



$extraMethods

#pragma ENDDUMP
