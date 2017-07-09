$header

#include "hbclass.ch"

CLASS QAxScriptEngine INHERIT QAxObject

   DATA self_destruction INIT .F.

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

/*
QAxScriptEngine ( const QString & language, QAxScript * script )
*/
$constructor=|new|const QString &,QAxScript *

$deleteMethod

/*
void addItem ( const QString & name )
*/
$method=|void|addItem|const QString &

/*
bool hasIntrospection () const
*/
$method=|bool|hasIntrospection|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString scriptLanguage () const
*/
$method=|QString|scriptLanguage|

/*
void setState ( State st )
*/
$method=|void|setState|QAxScriptEngine::State

/*
State state () const
*/
$method=|QAxScriptEngine::State|state|

#pragma ENDDUMP
