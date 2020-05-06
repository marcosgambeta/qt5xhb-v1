%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QtGuiVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtGui/QtGuiVersion>
#endif

HB_FUNC( QTGUI_VERSION_STR )
{
  hb_retc( (const char *) QTGUI_VERSION_STR );
}

HB_FUNC( QTGUI_VERSION )
{
  hb_retni( QTGUI_VERSION );
}
