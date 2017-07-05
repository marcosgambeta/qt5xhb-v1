$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QJsonDocument

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD array
   METHOD isArray
   METHOD isEmpty
   METHOD isNull
   METHOD isObject
   METHOD object
   METHOD rawData
   METHOD setArray
   METHOD setObject
   METHOD toBinaryData
   METHOD toJson
   METHOD toVariant
   METHOD fromBinaryData
   METHOD fromJson
   METHOD fromRawData
   METHOD fromVariant

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

#include <QJsonArray>
#include <QJsonObject>
#include <QVariant>

/*
QJsonDocument()
*/
void QJsonDocument_new1 ()
{
  QJsonDocument * o = new QJsonDocument ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonDocument(const QJsonObject & object)
*/
void QJsonDocument_new2 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONOBJECT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonDocument(const QJsonArray & array)
*/
void QJsonDocument_new3 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONARRAY(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QJsonDocument(const QJsonDocument & other)
*/
void QJsonDocument_new4 ()
{
  QJsonDocument * o = new QJsonDocument ( *PQJSONDOCUMENT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QJsonDocument()
//[2]QJsonDocument(const QJsonObject & object)
//[3]QJsonDocument(const QJsonArray & array)
//[4]QJsonDocument(const QJsonDocument & other)

HB_FUNC_STATIC( QJSONDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QJsonDocument_new1();
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    QJsonDocument_new2();
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    QJsonDocument_new3();
  }
  else if( ISNUMPAR(1) && ISQJSONDOCUMENT(1) )
  {
    QJsonDocument_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QJsonArray array() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonArray * ptr = new QJsonArray( obj->array () );
    _qt5xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}

/*
bool isArray() const
*/
$method=|bool|isArray|

/*
bool isEmpty() const
*/
$method=|bool|isEmpty|

/*
bool isNull() const
*/
$method=|bool|isNull|

/*
bool isObject() const
*/
$method=|bool|isObject|

/*
QJsonObject object() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_OBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QJsonObject * ptr = new QJsonObject( obj->object () );
    _qt5xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}

/*
const char * rawData(int * size) const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_RAWDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) ) // TODO: implementar parametro opcional
    {
      int par1;
      const char * str1 = obj->rawData ( &par1 );
      hb_retc( str1 );
      hb_storni( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setArray(const QJsonArray & array)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONARRAY(1) )
    {
      obj->setArray ( *PQJSONARRAY(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setObject(const QJsonObject & object)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQJSONOBJECT(1) )
    {
      obj->setObject ( *PQJSONOBJECT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray toBinaryData() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOBINARYDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toBinaryData () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QByteArray toJson() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOJSON )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toJson () );
    _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOVARIANT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant () );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
static QJsonDocument fromBinaryData(const QByteArray & data, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMBINARYDATA )
{
  if( ISQBYTEARRAY(1) && ISOPTNUM(2) )
  {
    int par2 = ISNIL(2)? (int) QJsonDocument::Validate : hb_parni(2);
    QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromBinaryData ( *PQBYTEARRAY(1), (QJsonDocument::DataValidation) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QJsonDocument fromJson(const QByteArray & json, QJsonParseError * error = 0)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMJSON )
{
  if( ISQBYTEARRAY(1) && (ISQJSONPARSEERROR(2)||ISNIL(2)) )
  {
    QJsonParseError * par2 = ISNIL(2)? 0 : (QJsonParseError *) _qt5xhb_itemGetPtr(2);
    QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromJson ( *PQBYTEARRAY(1), par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QJsonDocument fromRawData(const char * data, int size, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMRAWDATA )
{
  if( ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
  {
    int par3 = ISNIL(3)? (int) QJsonDocument::Validate : hb_parni(3);
    QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromRawData ( PCONSTCHAR(1), PINT(2), (QJsonDocument::DataValidation) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QJsonDocument fromVariant(const QVariant & variant)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMVARIANT )
{
  if( ISQVARIANT(1) )
  {
    QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromVariant ( *PQVARIANT(1) ) );
    _qt5xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
