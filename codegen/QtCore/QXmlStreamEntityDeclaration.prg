$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTRINGREF
#endif

CLASS QXmlStreamEntityDeclaration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD notationName
   METHOD publicId
   METHOD systemId
   METHOD value

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
QXmlStreamEntityDeclaration()
*/
void QXmlStreamEntityDeclaration_new1 ()
{
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)
*/
void QXmlStreamEntityDeclaration_new2 ()
{
  QXmlStreamEntityDeclaration * o = new QXmlStreamEntityDeclaration ( *PQXMLSTREAMENTITYDECLARATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QXmlStreamEntityDeclaration()
//[2]QXmlStreamEntityDeclaration(const QXmlStreamEntityDeclaration & other)

HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlStreamEntityDeclaration_new1();
  }
  else if( ISNUMPAR(1) && ISQXMLSTREAMENTITYDECLARATION(1) )
  {
    QXmlStreamEntityDeclaration_new2();
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
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->name () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef notationName() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_NOTATIONNAME )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->notationName () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef publicId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_PUBLICID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->publicId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef systemId() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_SYSTEMID )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->systemId () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

/*
QStringRef value() const
*/
HB_FUNC_STATIC( QXMLSTREAMENTITYDECLARATION_VALUE )
{
  QXmlStreamEntityDeclaration * obj = (QXmlStreamEntityDeclaration *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStringRef * ptr = new QStringRef( obj->value () );
    _qt5xhb_createReturnClass ( ptr, "QSTRINGREF" );
  }
}

$extraMethods

#pragma ENDDUMP
