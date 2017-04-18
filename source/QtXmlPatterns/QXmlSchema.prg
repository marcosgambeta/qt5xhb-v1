/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
REQUEST QABSTRACTMESSAGEHANDLER
REQUEST QXMLNAMEPOOL
REQUEST QNETWORKACCESSMANAGER
REQUEST QABSTRACTURIRESOLVER
#endif

CLASS QXmlSchema

   DATA pointer
   DATA class_id INIT Class_Id_QXmlSchema
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD documentUri
   METHOD isValid
   METHOD load1
   METHOD load2
   METHOD load3
   METHOD load
   METHOD messageHandler
   METHOD namePool
   METHOD networkAccessManager
   METHOD setMessageHandler
   METHOD setNetworkAccessManager
   METHOD setUriResolver
   METHOD uriResolver
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QXmlSchema
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QXmlSchema>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QXmlSchema>
#endif

/*
QXmlSchema ()
*/
HB_FUNC_STATIC( QXMLSCHEMA_NEW1 )
{
  QXmlSchema * o = new QXmlSchema (  );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QXmlSchema ( const QXmlSchema & other )
*/
HB_FUNC_STATIC( QXMLSCHEMA_NEW2 )
{
  QXmlSchema * par1 = (QXmlSchema *) _qt5xhb_itemGetPtr(1);
  QXmlSchema * o = new QXmlSchema ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QXmlSchema ()
//[2]QXmlSchema ( const QXmlSchema & other )

HB_FUNC_STATIC( QXMLSCHEMA_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQXMLSCHEMA(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QXMLSCHEMA_DELETE )
{
  QXmlSchema * obj = (QXmlSchema *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl documentUri () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_DOCUMENTURI )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->documentUri (  ) );
    _qt5xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_ISVALID )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isValid (  ) );
  }
}


/*
bool load ( const QUrl & source )
*/
HB_FUNC_STATIC( QXMLSCHEMA_LOAD1 )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->load ( *par1 ) );
  }
}

/*
bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
*/
HB_FUNC_STATIC( QXMLSCHEMA_LOAD2 )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->load ( par1, par2 ) );
  }
}

/*
bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )
*/
HB_FUNC_STATIC( QXMLSCHEMA_LOAD3 )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
    QUrl par2 = ISNIL(2)? QUrl() : *(QUrl *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->load ( *par1, par2 ) );
  }
}


//[1]bool load ( const QUrl & source )
//[2]bool load ( QIODevice * source, const QUrl & documentUri = QUrl() )
//[3]bool load ( const QByteArray & data, const QUrl & documentUri = QUrl() )

HB_FUNC_STATIC( QXMLSCHEMA_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD1 );
  }
  else if( ISBETWEEN(1,2) && ISQIODEVICE(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD2 );
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && (ISQURL(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QXMLSCHEMA_LOAD3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAbstractMessageHandler * messageHandler () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_MESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QAbstractMessageHandler * ptr = obj->messageHandler (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTMESSAGEHANDLER" );
  }
}


/*
QXmlNamePool namePool () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NAMEPOOL )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QXmlNamePool * ptr = new QXmlNamePool( obj->namePool (  ) );
    _qt5xhb_createReturnClass ( ptr, "QXMLNAMEPOOL", true );
  }
}


/*
QNetworkAccessManager * networkAccessManager () const
*/
HB_FUNC_STATIC( QXMLSCHEMA_NETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->networkAccessManager (  );
    _qt5xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}


/*
void setMessageHandler ( QAbstractMessageHandler * handler )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETMESSAGEHANDLER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QXMLSCHEMA_SETNETWORKACCESSMANAGER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QNetworkAccessManager * par1 = (QNetworkAccessManager *) _qt5xhb_itemGetPtr(1);
    obj->setNetworkAccessManager ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUriResolver ( const QAbstractUriResolver * resolver )
*/
HB_FUNC_STATIC( QXMLSCHEMA_SETURIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
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
HB_FUNC_STATIC( QXMLSCHEMA_URIRESOLVER )
{
  QXmlSchema * obj = (QXmlSchema *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QAbstractUriResolver * ptr = obj->uriResolver (  );
    _qt5xhb_createReturnClass ( ptr, "QABSTRACTURIRESOLVER" );
  }
}



HB_FUNC_STATIC( QXMLSCHEMA_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QXMLSCHEMA_NEWFROM );
}

HB_FUNC_STATIC( QXMLSCHEMA_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QXMLSCHEMA_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
