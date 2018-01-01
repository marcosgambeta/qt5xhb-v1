%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QQmlScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD booleanLiteral
   METHOD isEmpty
   METHOD isNullLiteral
   METHOD isUndefinedLiteral
   METHOD numberLiteral
   METHOD stringLiteral

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

$prototype=QQmlScriptString()
$constructor=|new1|

$prototype=QQmlScriptString(const QQmlScriptString & other)
$constructor=|new2|const QQmlScriptString &

//[1]QQmlScriptString()
//[2]QQmlScriptString(const QQmlScriptString & other)

HB_FUNC_STATIC( QQMLSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQQMLSCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QQMLSCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool booleanLiteral(bool * ok) const
$method=|bool|booleanLiteral|bool *

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool isNullLiteral() const
$method=|bool|isNullLiteral|

$prototype=bool isUndefinedLiteral() const
$method=|bool|isUndefinedLiteral|

$prototype=qreal numberLiteral(bool * ok) const
$method=|qreal|numberLiteral|bool *

$prototype=QString stringLiteral() const
$method=|QString|stringLiteral|

$extraMethods

#pragma ENDDUMP
