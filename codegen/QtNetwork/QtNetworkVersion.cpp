%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtNetwork

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtNetworkVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtNetworkVersion>
#endif

HB_FUNC( QTNETWORK_VERSION_STR )
{
  hb_retc( (const char *) QTNETWORK_VERSION_STR );
}

HB_FUNC( QTNETWORK_VERSION )
{
  hb_retni( QTNETWORK_VERSION );
}
