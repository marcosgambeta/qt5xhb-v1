$header

#include "hbclass.ch"

CLASS QXmlSimpleReader INHERIT QXmlReader

   METHOD new
   METHOD delete
   METHOD parse
   METHOD parseContinue

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSimpleReader ()
$constructor=|new|

$deleteMethod

$prototype=virtual bool parse ( const QXmlInputSource * input, bool incremental )
$virtualMethod=|bool|parse|const QXmlInputSource *,bool

$prototype=virtual bool parseContinue ()
$virtualMethod=|bool|parseContinue|

#pragma ENDDUMP
