%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtMultimediaWidgets

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimediaWidgets/QtMultimediaWidgetsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtMultimediaWidgets/QtMultimediaWidgetsVersion>
#endif

HB_FUNC( QTMULTIMEDIAWIDGETS_VERSION_STR )
{
  hb_retc( (const char *) QTMULTIMEDIAWIDGETS_VERSION_STR );
}

HB_FUNC( QTMULTIMEDIAWIDGETS_VERSION )
{
  hb_retni( QTMULTIMEDIAWIDGETS_VERSION );
}
