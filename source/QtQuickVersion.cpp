/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QtQuickVersion>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QtQuickVersion>
#endif
#endif

HB_FUNC( QTQUICK_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  hb_retc( (const char *) QTQUICK_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QTQUICK_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  hb_retni( QTQUICK_VERSION );
#else
  hb_retni( 0 );
#endif
}
