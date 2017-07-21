$header

#include "hbclass.ch"

CLASS QTextListFormat INHERIT QTextFormat

   DATA self_destruction INIT .F.

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

/*
QTextListFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setStyle(Style style)
*/
$method=|void|setStyle|QTextListFormat::Style

/*
Style style() const
*/
$method=|QTextListFormat::Style|style|

/*
void setIndent(int indent)
*/
$method=|void|setIndent|int

/*
int indent() const
*/
$method=|int|indent|

/*
void setNumberPrefix(const QString &numberPrefix)
*/
$method=|void|setNumberPrefix|const QString &

/*
QString numberPrefix() const
*/
$method=|QString|numberPrefix|

/*
void setNumberSuffix(const QString &numberSuffix)
*/
$method=|void|setNumberSuffix|const QString &

/*
QString numberSuffix() const
*/
$method=|QString|numberSuffix|

#pragma ENDDUMP
