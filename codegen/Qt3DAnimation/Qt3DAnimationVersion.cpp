%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=Qt3DAnimation

$header

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <Qt3DAnimationVersion>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
#include <Qt3DAnimationVersion>
#endif
#endif

HB_FUNC( QT3DANIMATION_VERSION_STR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retc( (const char *) QT3DANIMATION_VERSION_STR );
#else
  hb_retc( (const char *) "" );
#endif
}

HB_FUNC( QT3DANIMATION_VERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  hb_retni( QT3DANIMATION_VERSION );
#else
  hb_retni( 0 );
#endif
}
