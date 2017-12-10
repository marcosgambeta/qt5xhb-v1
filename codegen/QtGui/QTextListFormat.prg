$header

#include "hbclass.ch"

CLASS QTextListFormat INHERIT QTextFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setStyle
   METHOD style
   METHOD setIndent
   METHOD indent
   METHOD setNumberPrefix
   METHOD numberPrefix
   METHOD setNumberSuffix
   METHOD numberSuffix

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextListFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setStyle(Style style)
$method=|void|setStyle|QTextListFormat::Style

$prototype=Style style() const
$method=|QTextListFormat::Style|style|

$prototype=void setIndent(int indent)
$method=|void|setIndent|int

$prototype=int indent() const
$method=|int|indent|

$prototype=void setNumberPrefix(const QString &numberPrefix)
$method=|void|setNumberPrefix|const QString &

$prototype=QString numberPrefix() const
$method=|QString|numberPrefix|

$prototype=void setNumberSuffix(const QString &numberSuffix)
$method=|void|setNumberSuffix|const QString &

$prototype=QString numberSuffix() const
$method=|QString|numberSuffix|

#pragma ENDDUMP
