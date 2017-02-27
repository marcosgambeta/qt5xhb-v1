/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QX11Info

   DATA pointer
   DATA class_id INIT Class_Id_QX11Info
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD isPlatformX11
   METHOD appDpiX
   METHOD appDpiY
   METHOD appRootWindow
   METHOD appScreen
   METHOD appTime
   METHOD appUserTime
   METHOD setAppTime
   METHOD setAppUserTime
   METHOD getTimestamp
   METHOD display
   METHOD connection
   METHOD nextStartupId
   METHOD setNextStartupId
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QX11Info
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QX11Info>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
#include <QX11Info>
#endif
#endif


HB_FUNC_STATIC( QX11INFO_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QX11Info * obj = (QX11Info *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
static bool isPlatformX11()
*/
HB_FUNC_STATIC( QX11INFO_ISPLATFORMX11 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retl( QX11Info::isPlatformX11 (  ) );
#endif
}


/*
static int appDpiX(int screen=-1)
*/
HB_FUNC_STATIC( QX11INFO_APPDPIX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retni( QX11Info::appDpiX ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
#endif
}


/*
static int appDpiY(int screen=-1)
*/
HB_FUNC_STATIC( QX11INFO_APPDPIY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retni( QX11Info::appDpiY ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
#endif
}


/*
static unsigned long appRootWindow(int screen=-1)
*/
HB_FUNC_STATIC( QX11INFO_APPROOTWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appRootWindow ( (int) ISNIL(1)? -1 : hb_parni(1) ) );
#endif
}


/*
static int appScreen()
*/
HB_FUNC_STATIC( QX11INFO_APPSCREEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retni( QX11Info::appScreen (  ) );
#endif
}


/*
static unsigned long appTime()
*/
HB_FUNC_STATIC( QX11INFO_APPTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appTime (  ) );
#endif
}


/*
static unsigned long appUserTime()
*/
HB_FUNC_STATIC( QX11INFO_APPUSERTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appUserTime (  ) );
#endif
}


/*
static void setAppTime(unsigned long time)
*/
HB_FUNC_STATIC( QX11INFO_SETAPPTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  unsigned long par1 = hb_parnl(1);
  QX11Info::setAppTime ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static void setAppUserTime(unsigned long time)
*/
HB_FUNC_STATIC( QX11INFO_SETAPPUSERTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  unsigned long par1 = hb_parnl(1);
  QX11Info::setAppUserTime ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
static unsigned long getTimestamp()
*/
HB_FUNC_STATIC( QX11INFO_GETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::getTimestamp (  ) );
#endif
}


/*
static Display *display()
*/
HB_FUNC_STATIC( QX11INFO_DISPLAY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retptr( (Display *) QX11Info::display (  ) );
#endif
}


/*
static xcb_connection_t *connection()
*/
HB_FUNC_STATIC( QX11INFO_CONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retptr( (xcb_connection_t *) QX11Info::connection (  ) );
#endif
}


/*
static QByteArray nextStartupId()
*/
HB_FUNC_STATIC( QX11INFO_NEXTSTARTUPID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * ptr = new QByteArray( QX11Info::nextStartupId (  ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}


/*
static void setNextStartupId(const QByteArray &id)
*/
HB_FUNC_STATIC( QX11INFO_SETNEXTSTARTUPID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * par1 = (QByteArray *) _qt5xhb_itemGetPtr(1);
  QX11Info::setNextStartupId ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}



HB_FUNC_STATIC( QX11INFO_NEWFROM )
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

HB_FUNC_STATIC( QX11INFO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QX11INFO_NEWFROM );
}

HB_FUNC_STATIC( QX11INFO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QX11INFO_NEWFROM );
}

HB_FUNC_STATIC( QX11INFO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QX11INFO_SETSELFDESTRUCTION )
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