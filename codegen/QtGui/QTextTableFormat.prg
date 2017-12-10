$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QTEXTLENGTH
#endif

CLASS QTextTableFormat INHERIT QTextFrameFormat

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

$prototype=QTextTableFormat()
$constructor=|new|

$deleteMethod

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=int columns() const
$method=|int|columns|

$prototype=void setColumns(int columns)
$method=|void|setColumns|int

$prototype=void setColumnWidthConstraints(const QVector<QTextLength> &constraints)
$method=|void|setColumnWidthConstraints|const QVector<QTextLength> &

$prototype=QVector<QTextLength> columnWidthConstraints() const
$method=|QVector<QTextLength>|columnWidthConstraints|

$prototype=void clearColumnWidthConstraints()
$method=|void|clearColumnWidthConstraints|

$prototype=qreal cellSpacing() const
$method=|qreal|cellSpacing|

$prototype=void setCellSpacing(qreal spacing)
$method=|void|setCellSpacing|qreal

$prototype=qreal cellPadding() const
$method=|qreal|cellPadding|

$prototype=void setCellPadding(qreal padding)
$method=|void|setCellPadding|qreal

$prototype=void setAlignment(Qt::Alignment alignment)
$method=|void|setAlignment|Qt::Alignment

$prototype=Qt::Alignment alignment() const
$method=|Qt::Alignment|alignment|

$prototype=void setHeaderRowCount(int count)
$method=|void|setHeaderRowCount|int

$prototype=int headerRowCount() const
$method=|int|headerRowCount|

#pragma ENDDUMP
