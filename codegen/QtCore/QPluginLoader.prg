$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QPluginLoader INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorString
   METHOD fileName
   METHOD instance
   METHOD isLoaded
   METHOD load
   METHOD loadHints
   METHOD setFileName
   METHOD setLoadHints
   METHOD unload
   METHOD staticInstances

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QPluginLoader ( QObject * parent = 0 )
*/
$internalConstructor=|new1|QObject *=0

/*
QPluginLoader ( const QString & fileName, QObject * parent = 0 )
*/
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

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
QObject * instance ()
*/
$method=|QObject *|instance|

/*
bool isLoaded () const
*/
$method=|bool|isLoaded|

/*
bool load ()
*/
$method=|bool|load|

/*
QLibrary::LoadHints loadHints () const
*/
$method=|QLibrary::LoadHints|loadHints|

/*
void setFileName ( const QString & fileName )
*/
$method=|void|setFileName|const QString &

/*
void setLoadHints ( QLibrary::LoadHints loadHints )
*/
$method=|void|setLoadHints|QLibrary::LoadHints

/*
bool unload ()
*/
$method=|bool|unload|

/*
QObjectList staticInstances ()
*/
$method=|QObjectList|staticInstances|

#pragma ENDDUMP
