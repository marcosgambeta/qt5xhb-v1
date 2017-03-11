/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"


CLASS QEventLoopLocker

   DATA pointer
   DATA class_id INIT Class_Id_QEventLoopLocker
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEventLoopLocker
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QEventLoopLocker>
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
#include <QEventLoopLocker>
#endif

/*
QEventLoopLocker()
*/
HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW1 )
{
  QEventLoopLocker * o = new QEventLoopLocker (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventLoopLocker *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QEventLoopLocker(QEventLoop * loop)
*/
HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW2 )
{
  QEventLoop * par1 = (QEventLoop *) _qt5xhb_itemGetPtr(1);
  QEventLoopLocker * o = new QEventLoopLocker ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventLoopLocker *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QEventLoopLocker(QThread * thread)
*/
HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW3 )
{
  QThread * par1 = (QThread *) _qt5xhb_itemGetPtr(1);
  QEventLoopLocker * o = new QEventLoopLocker ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEventLoopLocker *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QEventLoopLocker()
//[2]QEventLoopLocker(QEventLoop * loop)
//[3]QEventLoopLocker(QThread * thread)

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QEVENTLOOPLOCKER_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQEVENTLOOP(1) )
  {
    HB_FUNC_EXEC( QEVENTLOOPLOCKER_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQTHREAD(1) )
  {
    HB_FUNC_EXEC( QEVENTLOOPLOCKER_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QEVENTLOOPLOCKER_DELETE )
{
  QEventLoopLocker * obj = (QEventLoopLocker *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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


HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEWFROM )
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

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QEVENTLOOPLOCKER_NEWFROM );
}

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QEVENTLOOPLOCKER_NEWFROM );
}

HB_FUNC_STATIC( QEVENTLOOPLOCKER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QEVENTLOOPLOCKER_SETSELFDESTRUCTION )
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