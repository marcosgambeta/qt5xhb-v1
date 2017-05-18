/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtScriptToolsVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtScriptToolsVersion>
#endif

HB_FUNC( QTSCRIPTTOOLS_VERSION_STR )
{
  hb_retc( (const char *) QTSCRIPTTOOLS_VERSION_STR );
}

HB_FUNC( QTSCRIPTTOOLS_VERSION )
{
  hb_retni( QTSCRIPTTOOLS_VERSION );
}
