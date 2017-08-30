$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

CLASS QTextTableFormat INHERIT QTextFrameFormat

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD columns
   METHOD setColumns
   METHOD setColumnWidthConstraints
   METHOD columnWidthConstraints
   METHOD clearColumnWidthConstraints
   METHOD cellSpacing
   METHOD setCellSpacing
   METHOD cellPadding
   METHOD setCellPadding
   METHOD setAlignment
   METHOD alignment
   METHOD setHeaderRowCount
   METHOD headerRowCount

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextTableFormat()
*/
$constructor=|new|

$deleteMethod

/*
bool isValid() const
*/
$method=|bool|isValid|

/*
int columns() const
*/
$method=|int|columns|

/*
void setColumns(int columns)
*/
$method=|void|setColumns|int

/*
void setColumnWidthConstraints(const QVector<QTextLength> &constraints)
*/
$method=|void|setColumnWidthConstraints|const QVector<QTextLength> &

/*
QVector<QTextLength> columnWidthConstraints() const
*/
$method=|QVector<QTextLength>|columnWidthConstraints|

/*
void clearColumnWidthConstraints()
*/
$method=|void|clearColumnWidthConstraints|

/*
qreal cellSpacing() const
*/
$method=|qreal|cellSpacing|

/*
void setCellSpacing(qreal spacing)
*/
$method=|void|setCellSpacing|qreal

/*
qreal cellPadding() const
*/
$method=|qreal|cellPadding|

/*
void setCellPadding(qreal padding)
*/
$method=|void|setCellPadding|qreal

/*
void setAlignment(Qt::Alignment alignment)
*/
$method=|void|setAlignment|Qt::Alignment

/*
Qt::Alignment alignment() const
*/
$method=|Qt::Alignment|alignment|

/*
void setHeaderRowCount(int count)
*/
$method=|void|setHeaderRowCount|int

/*
int headerRowCount() const
*/
$method=|int|headerRowCount|

#pragma ENDDUMP
