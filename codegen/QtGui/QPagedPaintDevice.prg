%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QPaintDevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool newPage() = 0
$virtualMethod=|bool|newPage|

$prototype=PageSize pageSize() const
$method=|QPagedPaintDevice::PageSize|pageSize|

$prototype=virtual void setPageSize(PageSize size)
$virtualMethod=5,3,0|void|setPageSize|QPagedPaintDevice::PageSize

$prototype=QSizeF pageSizeMM() const
$method=|QSizeF|pageSizeMM|

$prototype=virtual void setPageSizeMM(const QSizeF & size)
$virtualMethod=|void|setPageSizeMM|const QSizeF &

$prototype=QPageLayout pageLayout() const
$method=5,3,0|QPageLayout|pageLayout|

$prototype=bool setPageLayout(const QPageLayout &pageLayout)
$method=5,3,0|bool|setPageLayout|const QPageLayout &

$prototype=bool setPageOrientation(QPageLayout::Orientation orientation)
$method=5,3,0|bool|setPageOrientation|QPageLayout::Orientation

$prototype=bool setPageMargins(const QMarginsF &margins)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins1|const QMarginsF &

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

//[1]bool setPageMargins(const QMarginsF &margins)
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QPagedPaintDevice_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPagedPaintDevice_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setPageMargins

#pragma ENDDUMP
