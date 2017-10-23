/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtWebKitWidgetsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWebKitWidgetsVersion>
#endif

HB_FUNC( QTWEBKITWIDGETS_VERSION_STR )
{
  hb_retc( (const char *) QTWEBKITWIDGETS_VERSION_STR );
}

HB_FUNC( QTWEBKITWIDGETS_VERSION )
{
  hb_retni( QTWEBKITWIDGETS_VERSION );
}
