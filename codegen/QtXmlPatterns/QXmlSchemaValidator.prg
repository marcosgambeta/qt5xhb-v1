$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QXMLSCHEMA
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchemaValidator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD schema
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setSchema
   METHOD setUriResolver
   METHOD uriResolver
   METHOD validate1
   METHOD validate2
   METHOD validate3
   METHOD validate

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

#include <QXmlSchema>

/*
QXmlSchemaValidator ()
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW1 )
{
  QXmlSchemaValidator * o = new QXmlSchemaValidator ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlSchemaValidator ( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW2 )
{
  QXmlSchemaValidator * o = new QXmlSchemaValidator ( *PQXMLSCHEMA(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QXmlSchemaValidator ()
//[2]QXmlSchemaValidator ( const QXmlSchema & schema )

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_MESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NAMEPOOL )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool () );
    _qt5xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_NETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager ();
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
QXmlSchema schema () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SCHEMA )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlSchema * ptr = new QXmlSchema( obj->schema () );
    _qt5xhb_createReturnClass ( ptr, "QXMLSCHEMA", true );
  }
}


/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETMESSAGEHANDLER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractMessageHandler * par1 = (QAbstractMessageHandler *) _qt5xhb_itemGetPtr(1);
    obj->setMessageHandler ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setNetworkAccessManager ( QNetworkAccessManager * manager )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETNETWORKACCESSMANAGER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) _qt5xhb_itemGetPtr(1);
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSchema ( const QXmlSchema & schema )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETSCHEMA )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSchema ( *PQXMLSCHEMA(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_SETURIRESOLVER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractUriResolver * par1 = (QAbstractUriResolver *) _qt5xhb_itemGetPtr(1);
    obj->setUriResolver ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
const QAbstractUriResolver * uriResolver () const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_URIRESOLVER )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver ();
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
  }
}


/*
bool validate ( const QUrl & source ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE1 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->validate ( *PQURL(1) ) );
  }
}

/*
bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE2 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    RBOOL( obj->validate ( PQIODEVICE(1), par2 ) );
  }
}

/*
bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const
*/
HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE3 )
{
  QXmlSchemaValidator * obj = (QXmlSchemaValidator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    RBOOL( obj->validate ( *PQBYTEARRAY(1), par2 ) );
  }
}


//[1]bool validate ( const QUrl & source ) const
//[2]bool validate ( QIODevice * source, const QUrl & documentUri = QUrl() ) const
//[3]bool validate ( const QByteArray & data, const QUrl & documentUri = QUrl() ) const

HB_FUNC_STATIC( QXMLSCHEMAVALIDATOR_VALIDATE )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMAVALIDATOR_VALIDATE3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


$extraMethods

#pragma ENDDUMP
