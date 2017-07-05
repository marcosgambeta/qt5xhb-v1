$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamNotationDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD publicId
   METHOD systemId

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
QXmlStreamNotationDeclaration()
*/
void QXmlStreamNotationDeclaration_new1 ()
{
  QXmlStreamNotationDeclaration * o = new QXmlStreamNotationDeclaration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)
*/
void QXmlStreamNotationDeclaration_new2 ()
{
  QXmlStreamNotationDeclaration * o = new QXmlStreamNotationDeclaration ( *PQXMLSTREAMNOTATIONDECLARATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamNotationDeclaration()
//[2]QXmlStreamNotationDeclaration(const QXmlStreamNotationDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamNotationDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMNOTATIONDECLARATION(1) )
  {
    QXmlStreamNotationDeclaration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QStringRef name() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_NAME )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_PUBLICID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMNOTATIONDECLARATION_SYSTEMID )
{
  QXmlStreamNotationDeclaration * obj = (QXmlStreamNotationDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
