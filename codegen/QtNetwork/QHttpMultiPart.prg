$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QHttpMultiPart INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD boundary
   METHOD setBoundary
   METHOD setContentType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QHttpMultiPart ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_NEW1 )
{
  QHttpMultiPart * o = new QHttpMultiPart ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_NEW2 )
{
  QHttpMultiPart * o = new QHttpMultiPart ( (QHttpMultiPart::ContentType) hb_parni(1), OPQOBJECT(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QHttpMultiPart ( QObject * parent = 0 )
//[2]QHttpMultiPart ( ContentType contentType, QObject * parent = 0 )

HB_FUNC_STATIC( QHTTPMULTIPART_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    HB_FUNC_EXEC( QHTTPMULTIPART_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void append ( const QHttpPart & httpPart )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_APPEND )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->append ( *PQHTTPPART(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray boundary () const
*/
HB_FUNC_STATIC( QHTTPMULTIPART_BOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->boundary () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
void setBoundary ( const QByteArray & boundary )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETBOUNDARY )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setBoundary ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setContentType ( ContentType contentType )
*/
HB_FUNC_STATIC( QHTTPMULTIPART_SETCONTENTTYPE )
{
  QHttpMultiPart * obj = (QHttpMultiPart *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContentType ( (QHttpMultiPart::ContentType) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
