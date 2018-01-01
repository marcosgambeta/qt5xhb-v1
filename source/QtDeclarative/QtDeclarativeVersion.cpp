/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtDeclarativeVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDeclarativeVersion>
#endif

HB_FUNC( QTDECLARATIVE_VERSION_STR )
{
  hb_retc( (const char *) QTDECLARATIVE_VERSION_STR );
}

HB_FUNC( QTDECLARATIVE_VERSION )
{
  hb_retni( QTDECLARATIVE_VERSION );
}
