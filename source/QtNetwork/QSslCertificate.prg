/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QDATETIME
REQUEST QSSLKEY
#endif

CLASS QSslCertificate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD clear
   METHOD digest
   METHOD effectiveDate
   METHOD expiryDate
   METHOD isNull
   METHOD issuerInfo1
   METHOD issuerInfo2
   METHOD issuerInfo
   METHOD publicKey
   METHOD serialNumber
   METHOD subjectInfo1
   METHOD subjectInfo2
   METHOD subjectInfo
   METHOD swap
   METHOD toDer
   METHOD toPem
   METHOD toText
   METHOD version
   METHOD fromData
   METHOD fromDevice
   METHOD fromPath

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSslCertificate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSslCertificate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSslCertificate>
#endif

#include <QDateTime>
#include <QSslKey>
#include <QStringList>

/*
QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW1 )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QSslCertificate * o = new QSslCertificate ( PQIODEVICE(1), (QSsl::EncodingFormat) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW2 )
{
  QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QSslCertificate * o = new QSslCertificate ( par1, (QSsl::EncodingFormat) par2 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslCertificate ( const QSslCertificate & other )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_NEW3 )
{
  QSslCertificate * o = new QSslCertificate ( *PQSSLCERTIFICATE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}


//[1]QSslCertificate ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
//[2]QSslCertificate ( const QByteArray & data = QByteArray(), QSsl::EncodingFormat format = QSsl::Pem )
//[3]QSslCertificate ( const QSslCertificate & other )

HB_FUNC_STATIC( QSSLCERTIFICATE_NEW )
{
  if( ISBETWEEN(1,2) && ISQIODEVICE(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW1 );
  }
  else if( ISBETWEEN(0,2) && ISOPTQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQSSLCERTIFICATE(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSSLCERTIFICATE_DELETE )
{
  QSslCertificate * obj = (QSslCertificate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clear ()
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_CLEAR )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray digest ( QCryptographicHash::Algorithm algorithm = QCryptographicHash::Md5 ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_DIGEST )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QCryptographicHash::Md5 : hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->digest ( (QCryptographicHash::Algorithm) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QDateTime effectiveDate () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EFFECTIVEDATE )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->effectiveDate () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime expiryDate () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_EXPIRYDATE )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->expiryDate () );
    _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}





/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISNULL )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}



/*
QStringList issuerInfo ( SubjectInfo subject ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO1 )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->issuerInfo ( (QSslCertificate::SubjectInfo) hb_parni(1) ) );
  }
}


/*
QStringList issuerInfo ( const QByteArray & attribute ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO2 )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->issuerInfo ( *PQBYTEARRAY(1) ) );
  }
}


//[1]QStringList issuerInfo ( SubjectInfo subject ) const
//[2]QStringList issuerInfo ( const QByteArray & tag ) const

HB_FUNC_STATIC( QSSLCERTIFICATE_ISSUERINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_ISSUERINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
QSslKey publicKey () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_PUBLICKEY )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslKey * ptr = new QSslKey( obj->publicKey () );
    _qt5xhb_createReturnClass ( ptr, "QSSLKEY", true );
  }
}


/*
QByteArray serialNumber () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SERIALNUMBER )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->serialNumber () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QStringList subjectInfo ( SubjectInfo subject ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO1 )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->subjectInfo ( (QSslCertificate::SubjectInfo) hb_parni(1) ) );
  }
}


/*
QString subjectInfo ( const QByteArray & attribute ) const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO2 )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->subjectInfo ( *PQBYTEARRAY(1) ) );
  }
}


//[1]QStringList subjectInfo(SubjectInfo subject) const
//[2]QStringList subjectInfo(const QByteArray & attribute) const

HB_FUNC_STATIC( QSSLCERTIFICATE_SUBJECTINFO )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO1 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QSSLCERTIFICATE_SUBJECTINFO2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
void swap(QSslCertificate & other)
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_SWAP )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSslCertificate * par1 = (QSslCertificate *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toDer () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TODER )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toDer () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toPem () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TOPEM )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toPem () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toText() const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_TOTEXT )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->toText () );
  }
}


/*
QByteArray version () const
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_VERSION )
{
  QSslCertificate * obj = (QSslCertificate *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->version () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
static QList<QSslCertificate> fromData ( const QByteArray & data, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDATA )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromData ( *PQBYTEARRAY(1), (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
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


/*
static QList<QSslCertificate> fromDevice ( QIODevice * device, QSsl::EncodingFormat format = QSsl::Pem )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMDEVICE )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  QList<QSslCertificate> list = QSslCertificate::fromDevice ( PQIODEVICE(1), (QSsl::EncodingFormat) par2 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
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


/*
static QList<QSslCertificate> fromPath ( const QString & path, QSsl::EncodingFormat format = QSsl::Pem, QRegExp::PatternSyntax syntax = QRegExp::FixedString )
*/
HB_FUNC_STATIC( QSSLCERTIFICATE_FROMPATH )
{
  int par2 = ISNIL(2)? (int) QSsl::Pem : hb_parni(2);
  int par3 = ISNIL(3)? (int) QRegExp::FixedString : hb_parni(3);
  QList<QSslCertificate> list = QSslCertificate::fromPath ( PQSTRING(1), (QSsl::EncodingFormat) par2, (QRegExp::PatternSyntax) par3 );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QSSLCERTIFICATE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
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




HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROM )
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

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSSLCERTIFICATE_NEWFROM );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSSLCERTIFICATE_SETSELFDESTRUCTION )
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