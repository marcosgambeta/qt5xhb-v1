/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

//#include <QtCore/QtGlobal>
#include <QtGlobal>

#include "hbapi.h"

HB_FUNC( QT5XHB_VERSION )
{
  hb_retc( (const char *) "1.0.0 (beta 2)" );
}

HB_FUNC( QT5XHB_VERSION_DATE )
{
  hb_retc( (const char *) "07/02/2015 19:43:28" );
}

/*
  a função abaixo existe para compatibilidade com o Qt4xHb
*/

HB_FUNC( QT4XHB_VERSION )
{
  hb_retc( (const char *) "1.0.0 (beta 2)" );
}

HB_FUNC( QT4XHB_VERSION_DATE )
{
  hb_retc( (const char *) "07/02/2015 19:43:28" );
}

/*
  Funções do Qt Framework (inclui funções, constantes e macros)
*/

HB_FUNC( QVERSION )
{
  hb_retc( (const char *) qVersion() );
}

HB_FUNC( QSHAREDBUILD )
{
  hb_retl( qSharedBuild() );
}

HB_FUNC( QT_VERSION_STR )
{
  hb_retc( (const char *) QT_VERSION_STR );
}

HB_FUNC( QT_VERSION )
{
  hb_retni( QT_VERSION );
}

HB_FUNC( QT_VERSION_CHECK )
{
  hb_retni( QT_VERSION_CHECK( hb_parni(1), hb_parni(2), hb_parni(3) ) );
}
