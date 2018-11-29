%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPluginLoader ( QObject * parent = 0 )
$internalConstructor=|new1|QObject *=0

$prototype=QPluginLoader ( const QString & fileName, QObject * parent = 0 )
$internalConstructor=|new2|const QString &,QObject *=0

//[1]QPluginLoader ( QObject * parent = 0 )
//[2]QPluginLoader ( const QString & fileName, QObject * parent = 0 )

HB_FUNC_STATIC( QPLUGINLOADER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QPluginLoader_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQOBJECT(2) )
  {
    QPluginLoader_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QString fileName () const
$method=|QString|fileName|

$prototype=QObject * instance ()
$method=|QObject *|instance|

$prototype=bool isLoaded () const
$method=|bool|isLoaded|

$prototype=bool load ()
$method=|bool|load|

$prototype=QLibrary::LoadHints loadHints () const
$method=|QLibrary::LoadHints|loadHints|

$prototype=void setFileName ( const QString & fileName )
$method=|void|setFileName|const QString &

$prototype=void setLoadHints ( QLibrary::LoadHints loadHints )
$method=|void|setLoadHints|QLibrary::LoadHints

$prototype=bool unload ()
$method=|bool|unload|

$prototype=QObjectList staticInstances ()
$method=|QObjectList|staticInstances|

#pragma ENDDUMP
