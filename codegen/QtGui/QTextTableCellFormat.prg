%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextCharFormat

$addMethods

$endClass

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
