%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetworkAuth

$header

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuthVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <QtNetworkAuthVersion>
#endif
#endif

HB_FUNC( QTNETWORKAUTH_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retc( (const char *) QTNETWORKAUTH_VERSION_STR );
#else
  hb_retc( "" );
#endif
}

HB_FUNC( QTNETWORKAUTH_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retni( QTNETWORKAUTH_VERSION );
#else
  hb_retni( 0 );
#endif
}
