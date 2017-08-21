$header

#include "hbclass.ch"

CLASS QQmlExtensionPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD initializeEngine
   METHOD registerTypes

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void initializeEngine(QQmlEngine * engine, const char * uri)
*/
$virtualMethod=|void|initializeEngine|QQmlEngine *,const char *

/*
virtual void registerTypes(const char * uri) = 0
*/
$virtualMethod=|void|registerTypes|const char *

#pragma ENDDUMP
