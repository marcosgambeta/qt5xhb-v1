$header

#include "hbclass.ch"

CLASS QAxScriptEngine INHERIT QAxObject

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD hasIntrospection
   METHOD isValid
   METHOD scriptLanguage
   METHOD setState
   METHOD state

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxScriptEngine ( const QString & language, QAxScript * script )
$constructor=|new|const QString &,QAxScript *

$deleteMethod

$prototype=void addItem ( const QString & name )
$method=|void|addItem|const QString &

$prototype=bool hasIntrospection () const
$method=|bool|hasIntrospection|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString scriptLanguage () const
$method=|QString|scriptLanguage|

$prototype=void setState ( State st )
$method=|void|setState|QAxScriptEngine::State

$prototype=State state () const
$method=|QAxScriptEngine::State|state|

#pragma ENDDUMP
