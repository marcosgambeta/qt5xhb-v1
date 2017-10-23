/*

  Qt5xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
