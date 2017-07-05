$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaEnum

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD isFlag
   METHOD keyCount
   METHOD key
   METHOD value
   METHOD scope
   METHOD keyToValue
   METHOD valueToKey
   METHOD keysToValue
   METHOD valueToKeys
   METHOD enclosingMetaObject
   METHOD isValid

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
QMetaEnum()
*/
HB_FUNC_STATIC( QMETAENUM_NEW )
{
  QMetaEnum * o = new QMetaEnum ();
  _qt5xhb_storePointerAndFlag( o, false );
}

$deleteMethod

/*
const char *name() const
*/
$method=|const char *|name|

/*
bool isFlag() const
*/
$method=|bool|isFlag|

/*
int keyCount() const
*/
$method=|int|keyCount|

/*
const char *key(int index) const
*/
$method=|const char *|key|int

/*
int value(int index) const
*/
$method=|int|value|int

/*
const char *scope() const
*/
$method=|const char *|scope|

/*
int keyToValue(const char *key) const
*/
$method=|int|keyToValue|const char *

/*
const char* valueToKey(int value) const
*/
$method=|const char *|valueToKey|int

/*
int keysToValue(const char * keys) const
*/
$method=|int|keysToValue|const char *

/*
QByteArray valueToKeys(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEYS )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QByteArray * ptr = new QByteArray( obj->valueToKeys ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAENUM_ENCLOSINGMETAOBJECT )
{
  QMetaEnum * obj = (QMetaEnum *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}

/*
bool isValid() const
*/
$method=|bool|isValid|

$extraMethods

#pragma ENDDUMP
