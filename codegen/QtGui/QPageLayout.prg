%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,3,0

#include <QRect>

$prototype=QPageLayout()
$internalConstructor=5,3,0|new1|

$prototype=QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
%% TODO: implementar
%%$internalConstructor=5,3,0|new2|const QPageSize &,QPageLayout::Orientation,const QMarginsF &,QPageLayout::Unit=QPageLayout::Point,const QMarginsF &=QMarginsF(0, 0, 0, 0)

$prototype=QPageLayout(const QPageLayout &other)
$internalConstructor=5,3,0|new3|const QPageLayout &

//[1]QPageLayout()
//[2]QPageLayout(const QPageSize &pageSize, Orientation orientation, const QMarginsF &margins, Unit units = Point, const QMarginsF &minMargins = QMarginsF(0, 0, 0, 0))
//[3]QPageLayout(const QPageLayout &other)

HB_FUNC_STATIC( QPAGELAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_new1();
  }
  //else if( ISBETWEEN(3,5) && ISQPAGESIZE(1) && ISNUM(2) && ISQMARGINSF(3) && ISOPTNUM(4) && (ISQMARGINSF(5)||ISNIL(5)) )
  //{
  //  QPageLayout_new2();
  //}
  else if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
  {
    QPageLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod=5,3,0

$prototype=void swap(QPageLayout &other)
$method=5,3,0|void|swap|QPageLayout &

$prototype=bool isEquivalentTo(const QPageLayout &other) const
$method=5,3,0|bool|isEquivalentTo|const QPageLayout &

$prototype=bool isValid() const
$method=5,3,0|bool|isValid|

$prototype=Mode mode() const
$method=5,3,0|QPageLayout::Mode|mode|

$prototype=void setMode(Mode mode)
$method=5,3,0|void|setMode|QPageLayout::Mode

$prototype=QPageSize pageSize() const
$method=5,3,0|QPageSize|pageSize|

$prototype=Orientation orientation() const
$method=5,3,0|QPageLayout::Orientation|orientation|

$prototype=void setOrientation(Orientation orientation)
$method=5,3,0|void|setOrientation|QPageLayout::Orientation

$prototype=Unit units() const
$method=5,3,0|QPageLayout::Unit|units|

$prototype=void setUnits(Unit units)
$method=5,3,0|void|setUnits|QPageLayout::Unit

$prototype=bool setMargins(const QMarginsF &margins)
$method=5,3,0|bool|setMargins|const QMarginsF &

$prototype=bool setLeftMargin(qreal leftMargin)
$method=5,3,0|bool|setLeftMargin|qreal

$prototype=bool setRightMargin(qreal rightMargin)
$method=5,3,0|bool|setRightMargin|qreal

$prototype=bool setTopMargin(qreal topMargin)
$method=5,3,0|bool|setTopMargin|qreal

$prototype=bool setBottomMargin(qreal bottomMargin)
$method=5,3,0|bool|setBottomMargin|qreal

$prototype=QMarginsF margins() const
$internalMethod=5,3,0|QMarginsF|margins,margins1|

$prototype=QMarginsF margins(Unit units) const
$internalMethod=5,3,0|QMarginsF|margins,margins2|QPageLayout::Unit

//[1]QMarginsF margins() const
//[2]QMarginsF margins(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_MARGINS )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_margins1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_margins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QMargins marginsPoints() const
$method=5,3,0|QMargins|marginsPoints|

$prototype=QMargins marginsPixels(int resolution) const
$method=5,3,0|QMargins|marginsPixels|int

$prototype=void setMinimumMargins(const QMarginsF &minMargins)
$method=5,3,0|void|setMinimumMargins|const QMarginsF &

$prototype=QMarginsF minimumMargins() const
$method=5,3,0|QMarginsF|minimumMargins|

$prototype=QMarginsF maximumMargins() const
$method=5,3,0|QMarginsF|maximumMargins|

$prototype=QRectF fullRect() const
$internalMethod=5,3,0|QRectF|fullRect,fullRect1|

$prototype=QRectF fullRect(Unit units) const
$internalMethod=5,3,0|QRectF|fullRect,fullRect2|QPageLayout::Unit

//[1]QRectF fullRect() const
//[2]QRectF fullRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_FULLRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_fullRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_fullRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect fullRectPoints() const
$method=5,3,0|QRect|fullRectPoints|

$prototype=QRect fullRectPixels(int resolution) const
$method=5,3,0|QRect|fullRectPixels|int

$prototype=QRectF paintRect() const
$internalMethod=5,3,0|QRectF|paintRect,paintRect1|

$prototype=QRectF paintRect(Unit units) const
$internalMethod=5,3,0|QRectF|paintRect,paintRect2|QPageLayout::Unit

//[1]QRectF paintRect() const
//[2]QRectF paintRect(Unit units) const

HB_FUNC_STATIC( QPAGELAYOUT_PAINTRECT )
{
  if( ISNUMPAR(0) )
  {
    QPageLayout_paintRect1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPageLayout_paintRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect paintRectPoints() const
$method=5,3,0|QRect|paintRectPoints|

$prototype=QRect paintRectPixels(int resolution) const
$method=5,3,0|QRect|paintRectPixels|int

$extraMethods

#pragma ENDDUMP
