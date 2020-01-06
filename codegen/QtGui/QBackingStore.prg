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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBackingStore(QWindow * window)
$constructor=|new|QWindow *

$deleteMethod

$prototype=void beginPaint(const QRegion & region)
$method=|void|beginPaint|const QRegion &

$prototype=void endPaint()
$method=|void|endPaint|

$prototype=void flush(const QRegion & region, QWindow * win = 0, const QPoint & offset = QPoint())
$method=|void|flush|const QRegion &,QWindow *=0,const QPoint &=QPoint()

$prototype=QPlatformBackingStore * handle() const
%% TODO: implementar ?
%% $method=|QPlatformBackingStore *|handle|

$prototype=bool hasStaticContents() const
$method=|bool|hasStaticContents|

$prototype=QPaintDevice * paintDevice()
$method=|QPaintDevice *|paintDevice|

$prototype=void resize(const QSize & size)
$method=|void|resize|const QSize &

$prototype=bool scroll(const QRegion & area, int dx, int dy)
$method=|bool|scroll|const QRegion &,int,int

$prototype=void setStaticContents(const QRegion & region)
$method=|void|setStaticContents|const QRegion &

$prototype=QSize size() const
$method=|QSize|size|

$prototype=QRegion staticContents() const
$method=|QRegion|staticContents|

$prototype=QWindow * window() const
$method=|QWindow *|window|

$extraMethods

#pragma ENDDUMP
