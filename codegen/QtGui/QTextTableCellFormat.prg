$header

#include "hbclass.ch"

CLASS QTextTableCellFormat INHERIT QTextCharFormat

   DATA self_destruction INIT .F.

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

/*
QTextTableCellFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
void setTopPadding(qreal padding)
*/
$method=|void|setTopPadding|qreal

/*
qreal topPadding() const
*/
$method=|qreal|topPadding|

/*
void setBottomPadding(qreal padding)
*/
$method=|void|setBottomPadding|qreal

/*
qreal bottomPadding() const
*/
$method=|qreal|bottomPadding|

/*
void setLeftPadding(qreal padding)
*/
$method=|void|setLeftPadding|qreal

/*
qreal leftPadding() const
*/
$method=|qreal|leftPadding|

/*
void setRightPadding(qreal padding)
*/
$method=|void|setRightPadding|qreal

/*
qreal rightPadding() const
*/
$method=|qreal|rightPadding|

/*
void setPadding(qreal padding)
*/
$method=|void|setPadding|qreal

#pragma ENDDUMP
