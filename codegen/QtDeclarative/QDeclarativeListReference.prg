$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD append
   METHOD at
   METHOD canAppend
   METHOD canAt
   METHOD canClear
   METHOD canCount
   METHOD clear
   METHOD count
   METHOD isValid
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
QDeclarativeListReference ()
*/
void QDeclarativeListReference_new1 ()
{
  QDeclarativeListReference * o = new QDeclarativeListReference ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
void QDeclarativeListReference_new2 ()
{
  QDeclarativeEngine * par3 = ISNIL(3)? 0 : (QDeclarativeEngine *) _qt5xhb_itemGetPtr(3);
  QDeclarativeListReference * o = new QDeclarativeListReference ( PQOBJECT(1), PCONSTCHAR(2), par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeListReference_new1();
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    QDeclarativeListReference_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool append ( QObject * object ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_APPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQOBJECT(1) )
    {
      RBOOL( obj->append ( PQOBJECT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * at ( int index ) const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_AT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QObject * ptr = obj->at ( PINT(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool canAppend () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAPPEND )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canAppend () );
  }
}

/*
bool canAt () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANAT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canAt () );
  }
}

/*
bool canClear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canClear () );
  }
}

/*
bool canCount () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CANCOUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->canCount () );
  }
}

/*
bool clear () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_CLEAR )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->clear () );
  }
}

/*
int count () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_COUNT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_ISVALID )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QObject * object () const
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_OBJECT )
{
  QDeclarativeListReference * obj = (QDeclarativeListReference *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QObject * ptr = obj->object ();
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

$extraMethods

#pragma ENDDUMP
