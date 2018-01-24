%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtWebKitVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWebKitVersion>
#endif

HB_FUNC( QTWEBKIT_VERSION_STR )
{
  hb_retc( (const char *) QTWEBKIT_VERSION_STR );
}

HB_FUNC( QTWEBKIT_VERSION )
{
  hb_retni( QTWEBKIT_VERSION );
}
