/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <Qt>

#ifndef __XHARBOUR__
#include <QtSqlVersion>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtSqlVersion>
#endif

HB_FUNC( QTSQL_VERSION_STR )
{
  hb_retc( (const char *) QTSQL_VERSION_STR );
}

HB_FUNC( QTSQL_VERSION )
{
  hb_retni( QTSQL_VERSION );
}
