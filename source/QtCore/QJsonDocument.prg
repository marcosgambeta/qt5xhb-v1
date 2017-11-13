/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QJsonDocument
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QJsonDocument>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QJsonDocument>
#endif

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

HB_FUNC_STATIC( QJSONDOCUMENT_DELETE )
{
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
}

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
HB_FUNC_STATIC( QJSONDOCUMENT_ISARRAY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isArray () );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISEMPTY )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
bool isNull() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISNULL )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isObject() const
*/
HB_FUNC_STATIC( QJSONDOCUMENT_ISOBJECT )
{
  QJsonDocument * obj = (QJsonDocument *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isObject () );
  }
}

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
