%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QWinEvent INHERIT QEvent

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes=5,2,0

$prototype=QWinEvent(int type)
HB_FUNC_STATIC( QWINEVENT_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinEvent * o = new QWinEvent ( PINT(1) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

$deleteMethod=5,2,0

#pragma ENDDUMP
