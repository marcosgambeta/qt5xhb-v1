%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPurchasing

$header

#include <Qt>

#ifndef __XHARBOUR__
#include <QtPurchasingVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtPurchasingVersion>
#endif

HB_FUNC( QTPURCHASING_VERSION_STR )
{
  hb_retc( (const char *) QTPURCHASING_VERSION_STR );
}

HB_FUNC( QTPURCHASING_VERSION )
{
  hb_retni( QTPURCHASING_VERSION );
}
