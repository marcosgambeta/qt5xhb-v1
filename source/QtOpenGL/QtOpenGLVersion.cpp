/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtOpenGLVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtOpenGLVersion>
#endif

HB_FUNC( QTOPENGL_VERSION_STR )
{
  hb_retc( (const char *) QTOPENGL_VERSION_STR );
}

HB_FUNC( QTOPENGL_VERSION )
{
  hb_retni( QTOPENGL_VERSION );
}
