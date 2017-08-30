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
$internalConstructor=|new1|

/*
QJsonDocument(const QJsonObject & object)
*/
$internalConstructor=|new2|const QJsonObject &

/*
QJsonDocument(const QJsonArray & array)
*/
$internalConstructor=|new3|const QJsonArray &

/*
QJsonDocument(const QJsonDocument & other)
*/
$internalConstructor=|new4|const QJsonDocument &

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
$method=|QJsonArray|array|

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
$method=|QJsonObject|object|

/*
const char * rawData(int * size) const
*/
$method=|const char *|rawData(int *

/*
void setArray(const QJsonArray & array)
*/
$method=|void|setArray|const QJsonArray &

/*
void setObject(const QJsonObject & object)
*/
$method=|void|setObject|const QJsonObject &

/*
QByteArray toBinaryData() const
*/
$method=|QByteArray|toBinaryData|

/*
QByteArray toJson() const
*/
$method=|QByteArray|toJson|

/*
QVariant toVariant() const
*/
$method=|QVariant|toVariant|

/*
static QJsonDocument fromBinaryData(const QByteArray & data, DataValidation validation = Validate)
*/
$staticMethod=|QJsonDocument|fromBinaryData|const QByteArray &,QJsonDocument::DataValidation=QJsonDocument::Validate

/*
static QJsonDocument fromJson(const QByteArray & json, QJsonParseError * error = 0)
*/
$staticMethod=|QJsonDocument|fromJson|const QByteArray &,QJsonParseError *=0

/*
static QJsonDocument fromRawData(const char * data, int size, DataValidation validation = Validate)
*/
$staticMethod=|QJsonDocument|fromRawData|const char *,int,QJsonDocument::DataValidation=QJsonDocument::Validate

/*
static QJsonDocument fromVariant(const QVariant & variant)
*/
$staticMethod=|QJsonDocument|fromVariant|const QVariant &

$extraMethods

#pragma ENDDUMP
