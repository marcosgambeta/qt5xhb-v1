/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtrasVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QtWinExtrasVersion>
#endif
#endif

HB_FUNC( QTWINEXTRAS_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retc( (const char *) QTWINEXTRAS_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTWINEXTRAS_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  hb_retni( QTWINEXTRAS_VERSION );
#else
  hb_retni( 0 );
#endif
}
