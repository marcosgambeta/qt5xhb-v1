/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QFileIconProvider

   DATA pointer
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD icon
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFileIconProvider
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFileIconProvider>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFileIconProvider>
#endif

/*
QFileIconProvider()
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_NEW )
{
  QFileIconProvider * o = new QFileIconProvider (  );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFILEICONPROVIDER_DELETE )
{
  QFileIconProvider * obj = (QFileIconProvider *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QIcon icon(IconType type) const
*/
void QFileIconProvider_icon1 ()
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QIcon * ptr = new QIcon( obj->icon (  (QFileIconProvider::IconType) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
virtual QIcon icon(const QFileInfo & info) const
*/
void QFileIconProvider_icon2 ()
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
    QIcon * ptr = new QIcon( obj->icon ( *par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


//[1]virtual QIcon icon(IconType type) const
//[2]virtual QIcon icon(const QFileInfo & info) const

HB_FUNC_STATIC( QFILEICONPROVIDER_ICON )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QFileIconProvider_icon1();
  }
  else if( ISNUMPAR(1) && ISQFILEINFO(1) )
  {
    QFileIconProvider_icon2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QString type(const QFileInfo & info) const
*/
HB_FUNC_STATIC( QFILEICONPROVIDER_TYPE )
{
  QFileIconProvider * obj = (QFileIconProvider *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFileInfo * par1 = (QFileInfo *) _qt5xhb_itemGetPtr(1);
    hb_retc( (const char *) obj->type ( *par1 ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QFILEICONPROVIDER_NEWFROM )
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

HB_FUNC_STATIC( QFILEICONPROVIDER_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFILEICONPROVIDER_NEWFROM );
}

HB_FUNC_STATIC( QFILEICONPROVIDER_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFILEICONPROVIDER_NEWFROM );
}

HB_FUNC_STATIC( QFILEICONPROVIDER_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFILEICONPROVIDER_SETSELFDESTRUCTION )
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