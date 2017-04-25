/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

CLASS QEventLoopLocker

   DATA pointer
   //DATA class_id INIT Class_Id_QEventLoopLocker
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

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

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QEventLoopLocker>
#endif

/*
QEventLoopLocker()
*/
void QEventLoopLocker_new1 ()
{
  QEventLoopLocker * o = new QEventLoopLocker (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QEventLoopLocker(QEventLoop * loop)
*/
void QEventLoopLocker_new2 ()
{
  QEventLoop * par1 = (QEventLoop *) _qt5xhb_itemGetPtr(1);
  QEventLoopLocker * o = new QEventLoopLocker ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QEventLoopLocker(QThread * thread)
*/
void QEventLoopLocker_new3 ()
{
  QThread * par1 = (QThread *) _qt5xhb_itemGetPtr(1);
  QEventLoopLocker * o = new QEventLoopLocker ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QEventLoopLocker()
//[2]QEventLoopLocker(QEventLoop * loop)
//[3]QEventLoopLocker(QThread * thread)

HB_FUNC_STATIC( QEVENTLOOPLOCKER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QEventLoopLocker_new1();
  }
  else if( ISNUMPAR(1) && ISQEVENTLOOP(1) )
  {
    QEventLoopLocker_new2();
  }
  else if( ISNUMPAR(1) && ISQTHREAD(1) )
  {
    QEventLoopLocker_new3();
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
