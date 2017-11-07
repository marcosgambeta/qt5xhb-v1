/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSSLCERTIFICATE
REQUEST QSSLCIPHER
REQUEST QSSLKEY
#endif

CLASS QSslConfiguration

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD caCertificates
   METHOD ciphers
   METHOD isNull
   METHOD localCertificate
   METHOD peerCertificate
   METHOD peerCertificateChain
   METHOD peerVerifyDepth
   METHOD peerVerifyMode
   METHOD privateKey
   METHOD protocol
   METHOD sessionCipher
   METHOD setCaCertificates
   METHOD setCiphers
   METHOD setLocalCertificate
   METHOD setPeerVerifyDepth
   METHOD setPeerVerifyMode
   METHOD setPrivateKey
   METHOD setProtocol
   METHOD defaultConfiguration
   METHOD setDefaultConfiguration

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslConfiguration
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslConfiguration>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslConfiguration>
#endif

#include <QSslKey>
#include <QSslCipher>

/*
QSslConfiguration ()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEW1 )
{
  QSslConfiguration * o = new QSslConfiguration ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslConfiguration ( const QSslConfiguration & other )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_NEW2 )
{
  QSslConfiguration * o = new QSslConfiguration ( *PQSSLCONFIGURATION(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QSslConfiguration ()
//[2]QSslConfiguration ( const QSslConfiguration & other )

HB_FUNC_STATIC( QSSLCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLCONFIGURATION_NEW1 );
  }
  if( ISNUMPAR(1) && ISQSSLCONFIGURATION(1) )
  {
    HB_FUNC_EXEC( QSSLCONFIGURATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLCONFIGURATION_DELETE )
{
  QSslConfiguration * obj = (QSslConfiguration *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QList<QSslCertificate> caCertificates () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CACERTIFICATES )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> list = obj->caCertificates ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<QSslCipher> ciphers () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_CIPHERS )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCipher> list = obj->ciphers ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCIPHER" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCipher *) new QSslCipher ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_ISNULL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
QSslCertificate localCertificate () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_LOCALCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->localCertificate () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
QSslCertificate peerCertificate () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * ptr = new QSslCertificate( obj->peerCertificate () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCERTIFICATE", true );
  }
}


/*
QList<QSslCertificate> peerCertificateChain () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERCERTIFICATECHAIN )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> list = obj->peerCertificateChain ();
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QSslCertificate *) new QSslCertificate ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
int peerVerifyDepth () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYDEPTH )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->peerVerifyDepth () );
  }
}


/*
QSslSocket::PeerVerifyMode peerVerifyMode () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PEERVERIFYMODE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->peerVerifyMode () );
  }
}


/*
QSslKey privateKey () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PRIVATEKEY )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslKey * ptr = new QSslKey( obj->privateKey () );
    _qt5xhb_createReturnClass ( ptr, "QSSLKEY", true );
  }
}


/*
QSsl::SslProtocol protocol () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_PROTOCOL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocol () );
  }
}


/*
QSslCipher sessionCipher () const
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SESSIONCIPHER )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCipher * ptr = new QSslCipher( obj->sessionCipher () );
    _qt5xhb_createReturnClass ( ptr, "QSSLCIPHER", true );
  }
}


/*
void setCaCertificates ( const QList<QSslCertificate> & certificates )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCACERTIFICATES )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCertificate> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCaCertificates ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCiphers ( const QList<QSslCipher> & ciphers )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETCIPHERS )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QList<QSslCipher> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setCiphers ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLocalCertificate ( const QSslCertificate & certificate )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETLOCALCERTIFICATE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLocalCertificate ( *PQSSLCERTIFICATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerVerifyDepth ( int depth )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYDEPTH )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPeerVerifyDepth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeerVerifyMode ( QSslSocket::PeerVerifyMode mode )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPEERVERIFYMODE )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPeerVerifyMode ( (QSslSocket::PeerVerifyMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPrivateKey ( const QSslKey & key )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPRIVATEKEY )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setPrivateKey ( *PQSSLKEY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProtocol ( QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETPROTOCOL )
{
  QSslConfiguration * obj = (QSslConfiguration *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setProtocol ( (QSsl::SslProtocol) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
static QSslConfiguration defaultConfiguration ()
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_DEFAULTCONFIGURATION )
{
  QSslConfiguration * ptr = new QSslConfiguration( QSslConfiguration::defaultConfiguration () );
  _qt5xhb_createReturnClass ( ptr, "QSSLCONFIGURATION", true );
}


/*
static void setDefaultConfiguration ( const QSslConfiguration & configuration )
*/
HB_FUNC_STATIC( QSSLCONFIGURATION_SETDEFAULTCONFIGURATION )
{
  QSslConfiguration::setDefaultConfiguration ( *PQSSLCONFIGURATION(1) );
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROM )
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

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCONFIGURATION_NEWFROM );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCONFIGURATION_SETSELFDESTRUCTION )
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