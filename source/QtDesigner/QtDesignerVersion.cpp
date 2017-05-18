/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtDesignerVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDesignerVersion>
#endif

HB_FUNC( QTDESIGNER_VERSION_STR )
{
  hb_retc( (const char *) QTDESIGNER_VERSION_STR );
}

HB_FUNC( QTDESIGNER_VERSION )
{
  hb_retni( QTDESIGNER_VERSION );
}
