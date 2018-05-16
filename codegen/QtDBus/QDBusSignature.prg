%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD signature
   METHOD setSignature

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusSignature()
$constructor=|new1|

$prototype=explicit QDBusSignature(const char *signature)
$constructor=|new2|const char *

$prototype=explicit QDBusSignature(QLatin1String signature)
$constructor=|new3|QLatin1String

$prototype=explicit QDBusSignature(const QString &signature)
$constructor=|new4|const QString &

//[1]QDBusSignature()
//[2]explicit QDBusSignature(const char *signature)
//[3]explicit QDBusSignature(QLatin1String signature)
//[4]explicit QDBusSignature(const QString &signature)

%% TODO: resolver conflitos entre [2], [3] e [4]

HB_FUNC( QDBUSSIGNATURE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSSIGNATURE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString signature() const
$method=|QString|signature|

$prototype=void setSignature(const QString &signature)
$method=|void|setSignature|const QString &

$extraMethods

#pragma ENDDUMP
