/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QJSONARRAY
REQUEST QJSONOBJECT
REQUEST QBYTEARRAY
REQUEST QVARIANT
#endif

CLASS QJsonDocument

   DATA pointer
   DATA class_id INIT Class_Id_QJsonDocument
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
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

PROCEDURE destroyObject () CLASS QJsonDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QJsonDocument>
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
#include <QJsonDocument>
#endif
#endif

#include <QJsonArray>
#include <QJsonObject>
#include <QVariant>

/*
QJsonDocument()
*/
HB_FUNC_STATIC( QJSONDOCUMENT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonDocument * o = new QJsonDocument (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJsonDocument(const QJsonObject & object)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonObject * par1 = (QJsonObject *) _qtxhb_itemGetPtr(1);
  QJsonDocument * o = new QJsonDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJsonDocument(const QJsonArray & array)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonArray * par1 = (QJsonArray *) _qtxhb_itemGetPtr(1);
  QJsonDocument * o = new QJsonDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QJsonDocument(const QJsonDocument & other)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonDocument * par1 = (QJsonDocument *) _qtxhb_itemGetPtr(1);
  QJsonDocument * o = new QJsonDocument ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QJsonDocument *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QJsonDocument()
//[2]QJsonDocument(const QJsonObject & object)
//[3]QJsonDocument(const QJsonArray & array)
//[4]QJsonDocument(const QJsonDocument & other)

HB_FUNC_STATIC( QJSONDOCUMENT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QJSONDOCUMENT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
  {
    HB_FUNC_EXEC( QJSONDOCUMENT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQJSONARRAY(1) )
  {
    HB_FUNC_EXEC( QJSONDOCUMENT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQJSONDOCUMENT(1) )
  {
    HB_FUNC_EXEC( QJSONDOCUMENT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QJSONDOCUMENT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QJsonDocument * obj = (QJsonDocument *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QJsonArray array() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonArray * ptr = new QJsonArray( obj->array (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONARRAY" );
  }
}


/*
bool isArray() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isArray (  ) );
  }
}


/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISEMPTY )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isEmpty (  ) );
  }
}


/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISNULL )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isObject (  ) );
  }
}


/*
QJsonObject object() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_OBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonObject * ptr = new QJsonObject( obj->object (  ) );
    _qt4xhb_createReturnClass ( ptr, "QJSONOBJECT" );
  }
}


/*
const char * rawData(int * size) const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_RAWDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1;
    const char * str1 = obj->rawData ( &par1 );
    hb_retc( str1 );
    hb_storni( par1, 1 );
  }
}


/*
void setArray(const QJsonArray & array)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonArray * par1 = (QJsonArray *) _qtxhb_itemGetPtr(1);
    obj->setArray ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObject(const QJsonObject & object)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_SETOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QJsonObject * par1 = (QJsonObject *) _qtxhb_itemGetPtr(1);
    obj->setObject ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toBinaryData() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOBINARYDATA )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toBinaryData (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray toJson() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOJSON )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toJson (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QVariant toVariant() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_TOVARIANT )
{
  QJsonDocument * obj = (QJsonDocument *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QVariant * ptr = new QVariant( obj->toVariant (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
static QJsonDocument fromBinaryData(const QByteArray & data, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMBINARYDATA )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) QJsonDocument::Validate : hb_parni(2);
  QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromBinaryData ( *par1,  (QJsonDocument::DataValidation) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
}


/*
static QJsonDocument fromJson(const QByteArray & json, QJsonParseError * error = 0)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMJSON )
{
  QByteArray * par1 = (QByteArray *) _qtxhb_itemGetPtr(1);
  QJsonParseError * par2 = ISNIL(2)? 0 : (QJsonParseError *) _qtxhb_itemGetPtr(2);
  QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromJson ( *par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
}


/*
static QJsonDocument fromRawData(const char * data, int size, DataValidation validation = Validate)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMRAWDATA )
{
  const char * par1 = hb_parc(1);
  int par3 = ISNIL(3)? (int) QJsonDocument::Validate : hb_parni(3);
  QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromRawData (  (const char *) par1, (int) hb_parni(2),  (QJsonDocument::DataValidation) par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
}


/*
static QJsonDocument fromVariant(const QVariant & variant)
*/
HB_FUNC_STATIC( QJSONDOCUMENT_FROMVARIANT )
{
  QVariant * par1 = (QVariant *) _qtxhb_itemGetPtr(1);
  QJsonDocument * ptr = new QJsonDocument( QJsonDocument::fromVariant ( *par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QJSONDOCUMENT" );
}



HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROM )
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

HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QJSONDOCUMENT_NEWFROM );
}

HB_FUNC_STATIC( QJSONDOCUMENT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QJSONDOCUMENT_NEWFROM );
}

HB_FUNC_STATIC( QJSONDOCUMENT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QJSONDOCUMENT_SETSELFDESTRUCTION )
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