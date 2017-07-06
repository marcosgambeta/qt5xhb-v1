$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QQmlListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
   METHOD listElementType
   METHOD object

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
QQmlListReference()
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW1 )
{
  QQmlListReference * o = new QQmlListReference ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW2 )
{
  QQmlEngine * par3 = ISNIL(3)? 0 : (QQmlEngine *) _qt5xhb_itemGetPtr(3);
  QQmlListReference * o = new QQmlListReference ( PQOBJECT(1), PCONSTCHAR(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QQmlListReference()
//[2]QQmlListReference(QObject * object, const char * property, QQmlEngine * engine = 0)

HB_FUNC_STATIC( QQMLLISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQQMLENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QQMLLISTREFERENCE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool append(QObject * object) const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_APPEND )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->append ( PQOBJECT(1) ) );
  }
}


/*
QObject * at(int index) const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_AT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->at ( PINT(1) );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
bool canAppend() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANAPPEND )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canAppend () );
  }
}


/*
bool canAt() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANAT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canAt () );
  }
}


/*
bool canClear() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANCLEAR )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canClear () );
  }
}


/*
bool canCount() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CANCOUNT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->canCount () );
  }
}


/*
bool clear() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_CLEAR )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->clear () );
  }
}


/*
int count() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_COUNT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->count () );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_ISVALID )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
const QMetaObject * listElementType() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_LISTELEMENTTYPE )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QMetaObject * ptr = obj->listElementType ();
    _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QObject * object() const
*/
HB_FUNC_STATIC( QQMLLISTREFERENCE_OBJECT )
{
  QQmlListReference * obj = (QQmlListReference *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



$extraMethods

#pragma ENDDUMP
