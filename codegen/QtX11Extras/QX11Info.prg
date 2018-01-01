%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QX11Info

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes=5,1,0

$deleteMethod=5,1,0

$prototype=static bool isPlatformX11()
HB_FUNC_STATIC( QX11INFO_ISPLATFORMX11 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  RBOOL( QX11Info::isPlatformX11 () );
#endif
}

$prototype=static int appDpiX(int screen=-1)
HB_FUNC_STATIC( QX11INFO_APPDPIX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  RINT( QX11Info::appDpiX ( OPINT(1,-1) ) );
#endif
}

$prototype=static int appDpiY(int screen=-1)
HB_FUNC_STATIC( QX11INFO_APPDPIY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  RINT( QX11Info::appDpiY ( OPINT(1,-1) ) );
#endif
}

$prototype=static unsigned long appRootWindow(int screen=-1)
HB_FUNC_STATIC( QX11INFO_APPROOTWINDOW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appRootWindow ( OPINT(1,-1) ) );
#endif
}

$prototype=static int appScreen()
HB_FUNC_STATIC( QX11INFO_APPSCREEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  RINT( QX11Info::appScreen () );
#endif
}

$prototype=static unsigned long appTime()
HB_FUNC_STATIC( QX11INFO_APPTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appTime () );
#endif
}

$prototype=static unsigned long appUserTime()
HB_FUNC_STATIC( QX11INFO_APPUSERTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::appUserTime () );
#endif
}

$prototype=static void setAppTime(unsigned long time)
HB_FUNC_STATIC( QX11INFO_SETAPPTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  unsigned long par1 = hb_parnl(1);
  QX11Info::setAppTime ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static void setAppUserTime(unsigned long time)
HB_FUNC_STATIC( QX11INFO_SETAPPUSERTIME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  unsigned long par1 = hb_parnl(1);
  QX11Info::setAppUserTime ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$prototype=static unsigned long getTimestamp()
HB_FUNC_STATIC( QX11INFO_GETTIMESTAMP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retnl( QX11Info::getTimestamp () );
#endif
}

$prototype=static Display *display()
HB_FUNC_STATIC( QX11INFO_DISPLAY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retptr( (Display *) QX11Info::display () );
#endif
}

$prototype=static xcb_connection_t *connection()
HB_FUNC_STATIC( QX11INFO_CONNECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  hb_retptr( (xcb_connection_t *) QX11Info::connection () );
#endif
}

$prototype=static QByteArray nextStartupId()
HB_FUNC_STATIC( QX11INFO_NEXTSTARTUPID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QByteArray * ptr = new QByteArray( QX11Info::nextStartupId () );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
#endif
}

$prototype=static void setNextStartupId(const QByteArray &id)
HB_FUNC_STATIC( QX11INFO_SETNEXTSTARTUPID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  QX11Info::setNextStartupId ( *PQBYTEARRAY(1) );
  hb_itemReturn( hb_stackSelfItem() );
#endif
}

$extraMethods

#pragma ENDDUMP
