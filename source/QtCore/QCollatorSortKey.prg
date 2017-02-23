/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QCollatorSortKey

   DATA pointer
   DATA class_id INIT Class_Id_QCollatorSortKey
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD compare
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCollatorSortKey
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QCollatorSortKey>
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
#include <QCollatorSortKey>
#endif
#endif

/*
QCollatorSortKey(const QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCollatorSortKey * par1 = (QCollatorSortKey *) _qtxhb_itemGetPtr(1);
  QCollatorSortKey * o = new QCollatorSortKey ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QCollatorSortKey *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QCOLLATORSORTKEY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QCollatorSortKey * obj = (QCollatorSortKey *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void swap(QCollatorSortKey &other)
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_SWAP )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCollatorSortKey * par1 = (QCollatorSortKey *) _qtxhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int compare(const QCollatorSortKey &key) const
*/
HB_FUNC_STATIC( QCOLLATORSORTKEY_COMPARE )
{
  QCollatorSortKey * obj = (QCollatorSortKey *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QCollatorSortKey * par1 = (QCollatorSortKey *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->compare ( *par1 ) );
  }
}



HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROM )
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

HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLLATORSORTKEY_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLLATORSORTKEY_NEWFROM );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOLLATORSORTKEY_SETSELFDESTRUCTION )
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