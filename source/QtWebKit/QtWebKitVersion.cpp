/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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
