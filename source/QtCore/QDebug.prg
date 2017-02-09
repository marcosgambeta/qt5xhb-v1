/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"



CLASS QDebug

   DATA pointer
   DATA class_id INIT Class_Id_QDebug
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new4
   METHOD new
   METHOD delete
   METHOD swap
   METHOD space
   METHOD nospace
   METHOD maybeSpace
   METHOD autoInsertSpaces
   METHOD setAutoInsertSpaces
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDebug
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QDebug>
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
#include <QDebug>
#endif
#endif

/*
QDebug(QIODevice *device)
*/
HB_FUNC_STATIC( QDEBUG_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIODevice * par1 = (QIODevice *) _qtxhb_itemGetPtr(1);
  QDebug * o = new QDebug ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}

/*
QDebug(const QDebug &o)
*/
HB_FUNC_STATIC( QDEBUG_NEW4 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDebug * par1 = (QDebug *) _qtxhb_itemGetPtr(1);
  QDebug * o = new QDebug ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDebug *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


//[1]QDebug(QIODevice *device)
//[2]QDebug(QString *string)
//[3]QDebug(QtMsgType t)
//[4]QDebug(const QDebug &o)

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    HB_FUNC_EXEC( QDEBUG_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDEBUG_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QDebug * obj = (QDebug *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QDebug &other)
*/
HB_FUNC_STATIC( QDEBUG_SWAP )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDebug  * par1 = (QDebug  *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QDebug &space()
*/
HB_FUNC_STATIC( QDEBUG_SPACE )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDebug * ptr = &obj->space (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}


/*
QDebug &nospace()
*/
HB_FUNC_STATIC( QDEBUG_NOSPACE )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDebug * ptr = &obj->nospace (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}


/*
QDebug &maybeSpace()
*/
HB_FUNC_STATIC( QDEBUG_MAYBESPACE )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QDebug * ptr = &obj->maybeSpace (  );
    _qt4xhb_createReturnClass ( ptr, "QDEBUG" );
  }
}


/*
bool autoInsertSpaces() const
*/
HB_FUNC_STATIC( QDEBUG_AUTOINSERTSPACES )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoInsertSpaces (  ) );
  }
}


/*
void setAutoInsertSpaces(bool b)
*/
HB_FUNC_STATIC( QDEBUG_SETAUTOINSERTSPACES )
{
  QDebug * obj = (QDebug *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoInsertSpaces ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QDEBUG_NEWFROM )
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

HB_FUNC_STATIC( QDEBUG_NEWFROMOBJECT )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISOBJECT(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QDEBUG_NEWFROM );
}

HB_FUNC_STATIC( QDEBUG_NEWFROMPOINTER )
{
  //PHB_ITEM self = hb_stackSelfItem();
  //if( hb_pcount() == 1 && ISPOINTER(1) )
  //{
  //  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
  //  hb_objSendMsg( self, "_pointer", 1, ptr );
  //  hb_itemRelease( ptr );
  //  PHB_ITEM des = hb_itemPutL( NULL, false );
  //  hb_objSendMsg( self, "_self_destruction", 1, des );
  //  hb_itemRelease( des );
  //}
  //hb_itemReturn( self );
  HB_FUNC_EXEC( QDEBUG_NEWFROM );
}

HB_FUNC_STATIC( QDEBUG_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDEBUG_SETSELFDESTRUCTION )
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