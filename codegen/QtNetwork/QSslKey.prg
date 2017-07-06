$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QSslKey

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

/*
QSslKey ()
*/
HB_FUNC_STATIC( QSSLKEY_NEW1 )
{
  QSslKey * o = new QSslKey ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslKey ( const QByteArray & encoded, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLKEY_NEW2 )
{
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(5);
  QSslKey * o = new QSslKey ( *PQBYTEARRAY(1), (QSsl::KeyAlgorithm) hb_parni(2), (QSsl::EncodingFormat) par3, (QSsl::KeyType) par4, par5 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslKey ( QIODevice * device, QSsl::KeyAlgorithm algorithm, QSsl::EncodingFormat encoding = QSsl::Pem, QSsl::KeyType type = QSsl::PrivateKey, const QByteArray & passPhrase = QByteArray() )
*/
HB_FUNC_STATIC( QSSLKEY_NEW3 )
{
  int par3 = ISNIL(3)? (int) QSsl::Pem : hb_parni(3);
  int par4 = ISNIL(4)? (int) QSsl::PrivateKey : hb_parni(4);
  QByteArray par5 = ISNIL(5)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(5);
  QSslKey * o = new QSslKey ( PQIODEVICE(1), (QSsl::KeyAlgorithm) hb_parni(2), (QSsl::EncodingFormat) par3, (QSsl::KeyType) par4, par5 );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QSslKey ( const QSslKey & other )
*/
HB_FUNC_STATIC( QSSLKEY_NEW4 )
{
  QSslKey * o = new QSslKey ( *PQSSLKEY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
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
  else if( ISBETWEEN(2,5) && ISQBYTEARRAY(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
  {
    HB_FUNC_EXEC( QSSLKEY_NEW2 );
  }
  else if( ISBETWEEN(2,5) && ISQIODEVICE(1) && ISNUM(2) && ISOPTNUM(3) && ISOPTNUM(4) && ISOPTQBYTEARRAY(5) )
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

$deleteMethod

/*
QSsl::KeyAlgorithm algorithm () const
*/
HB_FUNC_STATIC( QSSLKEY_ALGORITHM )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->algorithm () );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QSSLKEY_CLEAR )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
bool isNull () const
*/
HB_FUNC_STATIC( QSSLKEY_ISNULL )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
int length () const
*/
HB_FUNC_STATIC( QSSLKEY_LENGTH )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->length () );
  }
}


/*
QByteArray toDer ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TODER )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->toDer ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toPem ( const QByteArray & passPhrase = QByteArray() ) const
*/
HB_FUNC_STATIC( QSSLKEY_TOPEM )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray par1 = ISNIL(1)? QByteArray() : *(QByteArray *) _qt5xhb_itemGetPtr(1);
    QByteArray * ptr = new QByteArray( obj->toPem ( par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QSsl::KeyType type () const
*/
HB_FUNC_STATIC( QSSLKEY_TYPE )
{
  QSslKey * obj = (QSslKey *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->type () );
  }
}



$extraMethods

#pragma ENDDUMP
