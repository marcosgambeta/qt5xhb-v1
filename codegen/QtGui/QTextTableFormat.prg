%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFrameFormat

$addMethods

$endClass

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
