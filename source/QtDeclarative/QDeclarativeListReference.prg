/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QDeclarativeListReference

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeListReference
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
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

PROCEDURE destroyObject () CLASS QDeclarativeListReference
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDeclarativeListReference>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDeclarativeListReference>
#endif

/*
QDeclarativeListReference ()
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW1 )
{
  QDeclarativeListReference * o = new QDeclarativeListReference (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeListReference *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW2 )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  QDeclarativeEngine * par3 = ISNIL(3)? 0 : (QDeclarativeEngine *) _qt5xhb_itemGetPtr(3);
  QDeclarativeListReference * o = new QDeclarativeListReference ( par1,  (const char *) par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeListReference *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QDeclarativeListReference ()
//[2]QDeclarativeListReference ( QObject * object, const char * property, QDeclarativeEngine * engine = 0 )

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQDECLARATIVEENGINE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEW2 );
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
    QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
    hb_retl( obj->append ( par1 ) );
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
    QObject * ptr = obj->at ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
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
    hb_retl( obj->canAppend (  ) );
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
    hb_retl( obj->canAt (  ) );
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
    hb_retl( obj->canClear (  ) );
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
    hb_retl( obj->canCount (  ) );
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
    hb_retl( obj->clear (  ) );
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
    hb_retni( obj->count (  ) );
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
    hb_retl( obj->isValid (  ) );
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
    QObject * ptr = obj->object (  );
    _qt5xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}



HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROM )
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

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVELISTREFERENCE_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVELISTREFERENCE_SETSELFDESTRUCTION )
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