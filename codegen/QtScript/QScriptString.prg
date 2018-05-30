%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD toString

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScriptString()
$internalConstructor=|new1|

$prototype=QScriptString(const QScriptString & other)
$internalConstructor=|new2|const QScriptString &

//[1]QScriptString()
//[2]QScriptString(const QScriptString & other)

HB_FUNC_STATIC( QSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    QScriptString_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTSTRING(1) )
  {
    QScriptString_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=QString toString() const
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
