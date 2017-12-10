$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTFORMAT
REQUEST QTEXTDOCUMENT
REQUEST QTEXTDOCUMENTPRIVATE
#endif

CLASS QTextObject INHERIT QObject

   METHOD format
   METHOD formatIndex
   METHOD document
   METHOD objectIndex
   METHOD docHandle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextFormat format() const
$method=|QTextFormat|format|

$prototype=int formatIndex() const
$method=|int|formatIndex|

$prototype=QTextDocument *document() const
$method=|QTextDocument *|document|

$prototype=int objectIndex() const
$method=|int|objectIndex|

$prototype=QTextDocumentPrivate *docHandle() const
$method=|QTextDocumentPrivate *|docHandle|

#pragma ENDDUMP
