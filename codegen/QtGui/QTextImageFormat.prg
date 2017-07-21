$header

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setName
   METHOD name
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextImageFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setName(const QString &name)
*/
$method=|void|setName|const QString &

/*
QString name() const
*/
$method=|QString|name|

/*
void setWidth(qreal width)
*/
$method=|void|setWidth|qreal

/*
qreal width() const
*/
$method=|qreal|width|

/*
void setHeight(qreal height)
*/
$method=|void|setHeight|qreal

/*
qreal height() const
*/
$method=|qreal|height|

#pragma ENDDUMP
