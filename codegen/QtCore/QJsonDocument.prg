%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QJsonArray>
#include <QJsonObject>
#include <QVariant>

$prototype=QJsonDocument()
$internalConstructor=|new1|

$prototype=QJsonDocument(const QJsonObject & object)
$internalConstructor=|new2|const QJsonObject &

$prototype=QJsonDocument(const QJsonArray & array)
$internalConstructor=|new3|const QJsonArray &

$prototype=QJsonDocument(const QJsonDocument & other)
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

$prototype=QJsonArray array() const
$method=|QJsonArray|array|

$prototype=bool isArray() const
$method=|bool|isArray|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isObject() const
$method=|bool|isObject|

$prototype=QJsonObject object() const
$method=|QJsonObject|object|

$prototype=const char * rawData(int * size) const
$method=|const char *|rawData|int *

$prototype=void setArray(const QJsonArray & array)
$method=|void|setArray|const QJsonArray &

$prototype=void setObject(const QJsonObject & object)
$method=|void|setObject|const QJsonObject &

$prototype=QByteArray toBinaryData() const
$method=|QByteArray|toBinaryData|

$prototype=QByteArray toJson() const
$method=|QByteArray|toJson|

$prototype=QVariant toVariant() const
$method=|QVariant|toVariant|

$prototype=static QJsonDocument fromBinaryData(const QByteArray & data, DataValidation validation = Validate)
$staticMethod=|QJsonDocument|fromBinaryData|const QByteArray &,QJsonDocument::DataValidation=QJsonDocument::Validate

$prototype=static QJsonDocument fromJson(const QByteArray & json, QJsonParseError * error = 0)
$staticMethod=|QJsonDocument|fromJson|const QByteArray &,QJsonParseError *=0

$prototype=static QJsonDocument fromRawData(const char * data, int size, DataValidation validation = Validate)
$staticMethod=|QJsonDocument|fromRawData|const char *,int,QJsonDocument::DataValidation=QJsonDocument::Validate

$prototype=static QJsonDocument fromVariant(const QVariant & variant)
$staticMethod=|QJsonDocument|fromVariant|const QVariant &

$extraMethods

#pragma ENDDUMP
