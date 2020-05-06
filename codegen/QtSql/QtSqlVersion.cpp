%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSql

$header

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtSql/QtSqlVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSql/QtSqlVersion>
#endif

HB_FUNC( QTSQL_VERSION_STR )
{
  hb_retc( (const char *) QTSQL_VERSION_STR );
}

HB_FUNC( QTSQL_VERSION )
{
  hb_retni( QTSQL_VERSION );
}
