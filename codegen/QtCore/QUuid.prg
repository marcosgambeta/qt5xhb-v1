$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUuid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD toByteArray
   METHOD toRfc4122
   METHOD toString
   METHOD variant
   METHOD version
   METHOD createUuidV3
   METHOD createUuidV5
   METHOD fromRfc4122

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
QUuid()
*/
void QUuid_new1 ()
{
  QUuid * o = new QUuid ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUuid(const QByteArray & text)
*/
void QUuid_new2 ()
{
  QUuid * o = new QUuid ( *PQBYTEARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QUuid(const GUID & guid)
*/
void QUuid_new3 ()
{
  QUuid * o = new QUuid ();
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QUuid()
//[2]QUuid(const QByteArray & text)
//[3]QUuid(const GUID & guid) // TODO: implementar metodo

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUuid_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUuid_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QUUID_TOBYTEARRAY )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray toRfc4122() const
*/
HB_FUNC_STATIC( QUUID_TORFC4122 )
{
  QUuid * obj = (QUuid *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toRfc4122 () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QString toString() const
*/
$method=|QString|toString|

/*
QUuid::Variant variant() const
*/
$method=|QUuid::Variant|variant|

/*
QUuid::Version version() const
*/
$method=|QUuid::Version|version|

/*
static QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
*/
void QUuid_createUuidV31 ()
{
  QUuid * ptr = new QUuid( QUuid::createUuidV3 ( *PQUUID(1), *PQBYTEARRAY(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

/*
static QUuid createUuidV3(const QUuid & ns, const QString & baseData)
*/
void QUuid_createUuidV32 ()
{
  QUuid * ptr = new QUuid( QUuid::createUuidV3 ( *PQUUID(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

//[1]QUuid createUuidV3(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV3(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV3 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV31();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV32();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
*/
void QUuid_createUuidV51 ()
{
  QUuid * ptr = new QUuid( QUuid::createUuidV5 ( *PQUUID(1), *PQBYTEARRAY(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

/*
static QUuid createUuidV5(const QUuid & ns, const QString & baseData)
*/
void QUuid_createUuidV52 ()
{
  QUuid * ptr = new QUuid( QUuid::createUuidV5 ( *PQUUID(1), PQSTRING(2) ) );
  _qt5xhb_createReturnClass ( ptr, "QUUID", true );
}

//[1]QUuid createUuidV5(const QUuid & ns, const QByteArray & baseData)
//[2]QUuid createUuidV5(const QUuid & ns, const QString & baseData)

HB_FUNC_STATIC( QUUID_CREATEUUIDV5 )
{
  if( ISNUMPAR(2) && ISQUUID(1) && ISQBYTEARRAY(2) )
  {
    QUuid_createUuidV51();
  }
  else if( ISNUMPAR(2) && ISQUUID(1) && ISCHAR(2) )
  {
    QUuid_createUuidV52();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QUuid fromRfc4122(const QByteArray & bytes)
*/
HB_FUNC_STATIC( QUUID_FROMRFC4122 )
{
  if( ISQBYTEARRAY(1) )
  {
    QUuid * ptr = new QUuid( QUuid::fromRfc4122 ( *PQBYTEARRAY(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QUUID", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
