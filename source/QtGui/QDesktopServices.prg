/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QDesktopServices

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD openUrl
   METHOD setUrlHandler
   METHOD unsetUrlHandler

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesktopServices
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QDesktopServices>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QDesktopServices>
#endif

HB_FUNC_STATIC( QDESKTOPSERVICES_DELETE )
{
  QDesktopServices * obj = (QDesktopServices *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
static bool openUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_OPENURL )
{
  if( ISQURL(1) )
  {
    QUrl * par1 = (QUrl *) _qt5xhb_itemGetPtr(1);
    hb_retl( QDesktopServices::openUrl ( *par1 ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_SETURLHANDLER )
{
  if( ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) )
  {
    QObject * par2 = (QObject *) _qt5xhb_itemGetPtr(2);
    const char * par3 = hb_parc(3);
    QDesktopServices::setUrlHandler ( PQSTRING(1), par2,  (const char *) par3 );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static void unsetUrlHandler ( const QString & scheme )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_UNSETURLHANDLER )
{
  if( ISCHAR(1) )
  {
    QDesktopServices::unsetUrlHandler ( PQSTRING(1) );
    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROM )
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

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESKTOPSERVICES_NEWFROM );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESKTOPSERVICES_NEWFROM );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_SETSELFDESTRUCTION )
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
