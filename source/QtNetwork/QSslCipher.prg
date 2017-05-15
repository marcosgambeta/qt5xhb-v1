/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QSslCipher

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD authenticationMethod
   METHOD encryptionMethod
   METHOD isNull
   METHOD keyExchangeMethod
   METHOD name
   METHOD protocol
   METHOD protocolString
   METHOD supportedBits
   METHOD usedBits

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslCipher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslCipher>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslCipher>
#endif

/*
QSslCipher ()
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW1 )
{
  QSslCipher * o = new QSslCipher ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW2 )
{
  int par2 = hb_parni(2);
  QSslCipher * o = new QSslCipher ( PQSTRING(1),  (QSsl::SslProtocol) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslCipher ( const QSslCipher & other )
*/
HB_FUNC_STATIC( QSSLCIPHER_NEW3 )
{
  QSslCipher * par1 = (QSslCipher *) _qt5xhb_itemGetPtr(1);
  QSslCipher * o = new QSslCipher ( *par1 );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QSslCipher ()
//[2]QSslCipher ( const QString & name, QSsl::SslProtocol protocol )
//[3]QSslCipher ( const QSslCipher & other )

HB_FUNC_STATIC( QSSLCIPHER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCIPHER(1) )
  {
    HB_FUNC_EXEC( QSSLCIPHER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLCIPHER_DELETE )
{
  QSslCipher * obj = (QSslCipher *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString authenticationMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_AUTHENTICATIONMETHOD )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->authenticationMethod ().toLatin1().data() );
  }
}


/*
QString encryptionMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_ENCRYPTIONMETHOD )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->encryptionMethod ().toLatin1().data() );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLCIPHER_ISNULL )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}


/*
QString keyExchangeMethod () const
*/
HB_FUNC_STATIC( QSSLCIPHER_KEYEXCHANGEMETHOD )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->keyExchangeMethod ().toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC_STATIC( QSSLCIPHER_NAME )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->name ().toLatin1().data() );
  }
}


/*
QSsl::SslProtocol protocol () const
*/
HB_FUNC_STATIC( QSSLCIPHER_PROTOCOL )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->protocol () );
  }
}


/*
QString protocolString () const
*/
HB_FUNC_STATIC( QSSLCIPHER_PROTOCOLSTRING )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->protocolString ().toLatin1().data() );
  }
}


/*
int supportedBits () const
*/
HB_FUNC_STATIC( QSSLCIPHER_SUPPORTEDBITS )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->supportedBits () );
  }
}


/*
int usedBits () const
*/
HB_FUNC_STATIC( QSSLCIPHER_USEDBITS )
{
  QSslCipher * obj = (QSslCipher *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->usedBits () );
  }
}



HB_FUNC_STATIC( QSSLCIPHER_NEWFROM )
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

HB_FUNC_STATIC( QSSLCIPHER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCIPHER_NEWFROM );
}

HB_FUNC_STATIC( QSSLCIPHER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCIPHER_NEWFROM );
}

HB_FUNC_STATIC( QSSLCIPHER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCIPHER_SETSELFDESTRUCTION )
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