%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QMessageLogger

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMessageLogger()
$internalConstructor=|new1|

$prototype=QMessageLogger(const char *file, int line, const char *function)
$internalConstructor=|new2|const char *,int,const char *

$prototype=QMessageLogger(const char *file, int line, const char *function, const char *category)
$internalConstructor=|new3|const char *,int,const char *,const char *

//[1]QMessageLogger()
//[2]QMessageLogger(const char *file, int line, const char *function)
//[3]QMessageLogger(const char *file, int line, const char *function, const char *category)

HB_FUNC_STATIC( QMESSAGELOGGER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMessageLogger_new1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) )
  {
    QMessageLogger_new2();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) )
  {
    QMessageLogger_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$extraMethods

#pragma ENDDUMP
