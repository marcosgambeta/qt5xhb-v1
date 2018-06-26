%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDBusObjectPath()
$constructor=|new1|

$prototype=explicit QDBusObjectPath(const char *path)
$constructor=|new2|const char *

$prototype=explicit QDBusObjectPath(QLatin1String path)
$constructor=|new3|QLatin1String

$prototype=explicit QDBusObjectPath(const QString &path)
$constructor=|new4|const QString &

//[1]QDBusObjectPath()
//[2]explicit QDBusObjectPath(const char *path)
//[3]explicit QDBusObjectPath(QLatin1String path)
//[4]explicit QDBusObjectPath(const QString &path)

// TODO: resolver conflitos entre [2], [3] e [4]

HB_FUNC( QDBUSOBJECTPATH_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW3 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDBUSOBJECTPATH_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString path() const
$method=|QString|path|

$prototype=void setPath(const QString &path)
$method=|void|setPath|const QString &

$extraMethods

#pragma ENDDUMP
