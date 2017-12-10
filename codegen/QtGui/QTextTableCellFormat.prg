$header

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setTopPadding
   METHOD topPadding
   METHOD setBottomPadding
   METHOD bottomPadding
   METHOD setLeftPadding
   METHOD leftPadding
   METHOD setRightPadding
   METHOD rightPadding
   METHOD setPadding

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextTableCellFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=void setTopPadding(qreal padding)
$method=|void|setTopPadding|qreal

$prototype=qreal topPadding() const
$method=|qreal|topPadding|

$prototype=void setBottomPadding(qreal padding)
$method=|void|setBottomPadding|qreal

$prototype=qreal bottomPadding() const
$method=|qreal|bottomPadding|

$prototype=void setLeftPadding(qreal padding)
$method=|void|setLeftPadding|qreal

$prototype=qreal leftPadding() const
$method=|qreal|leftPadding|

$prototype=void setRightPadding(qreal padding)
$method=|void|setRightPadding|qreal

$prototype=qreal rightPadding() const
$method=|qreal|rightPadding|

$prototype=void setPadding(qreal padding)
$method=|void|setPadding|qreal

#pragma ENDDUMP
