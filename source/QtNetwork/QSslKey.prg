/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QSslKey

   DATA pointer
   DATA class_id INIT Class_Id_QSslKey
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD algorithm
   METHOD clear
   METHOD isNull
   METHOD length
   METHOD toDer
   METHOD toPem
   METHOD type
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslKey
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSslKey>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSslKey>
#endif
#endif

/*
QSslKey ()
*/
HB_FUNC_STATIC( QSSLKEY_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSslKey * o = new QSslKey (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLKEY_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(5);
  QSslKey * o = new QSslKey ( *par1,  (QSsl::KeyAlgorithm) par2,  (QSsl::EncodingFormat) par3,  (QSsl::KeyType) par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLKEY_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  int par2 = hb_parni(2);
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(5);
  QSslKey * o = new QSslKey ( par1,  (QSsl::KeyAlgorithm) par2,  (QSsl::EncodingFormat) par3,  (QSsl::KeyType) par4, par5 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QSslKey ( const QSslKey & other )
*/
HB_FUNC_STATIC( QSSLKEY_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSslKey * par1 = (QSslKey *) _qtxhb_itemGetPtr(1);
  QSslKey * o = new QSslKey ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSslKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QSslKey ()
//[2]QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[3]QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
//[4]QSslKey ( const QSslKey & other )

HB_FUNC_STATIC( QSSLKEY_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW1 );
  }
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISQBYTEARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW2 );
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) && (ISQBYTEARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQSSLKEY(1) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLKEY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSslKey * obj = (QSslKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
QSsl::KeyAlgorithm algorithm () const
*/
HB_FUNC_STATIC( QSSLKEY_ALGORITHM )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->algorithm (  );
    hb_retni( i );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSSLKEY_CLEAR )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLKEY_ISNULL )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QSSLKEY_LENGTH )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->length (  ) );
  }
}


/*
QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TODER )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->toDer ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TOPEM )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qtxhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->toPem ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QSsl::KeyType type () const
*/
HB_FUNC_STATIC( QSSLKEY_TYPE )
{
  QSslKey * obj = (QSslKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}



HB_FUNC_STATIC( QSSLKEY_NEWFROM )
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

HB_FUNC_STATIC( QSSLKEY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLKEY_NEWFROM );
}

HB_FUNC_STATIC( QSSLKEY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLKEY_NEWFROM );
}

HB_FUNC_STATIC( QSSLKEY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLKEY_SETSELFDESTRUCTION )
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