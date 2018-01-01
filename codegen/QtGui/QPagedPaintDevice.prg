%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QPAGELAYOUT
#endif

CLASS QPagedPaintDevice INHERIT QPaintDevice

   METHOD delete
   METHOD newPage
   METHOD pageSize
   METHOD setPageSize
   METHOD pageSizeMM
   METHOD setPageSizeMM
   METHOD pageLayout
   METHOD setPageLayout
   METHOD setPageOrientation
   METHOD setPageMargins

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool newPage() = 0
$virtualMethod=|bool|newPage|

$prototype=PageSize pageSize() const
$method=|QPagedPaintDevice::PageSize|pageSize|

$prototype=virtual void setPageSize(PageSize size)
$virtualMethod=|void|setPageSize|QPagedPaintDevice::PageSize

$prototype=QSizeF pageSizeMM() const
$method=|QSizeF|pageSizeMM|

$prototype=virtual void setPageSizeMM(const QSizeF & size)
$virtualMethod=|void|setPageSizeMM|const QSizeF &

$prototype=QPageLayout pageLayout() const
$method=|QPageLayout|pageLayout|

$prototype=bool setPageLayout(const QPageLayout &pageLayout)
$method=|bool|setPageLayout|const QPageLayout &

$prototype=bool setPageOrientation(QPageLayout::Orientation orientation)
$method=|bool|setPageOrientation|QPageLayout::Orientation

$prototype=bool setPageMargins(const QMarginsF &margins)
$internalMethod=|bool|setPageMargins,setPageMargins1|const QMarginsF &

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

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

#pragma ENDDUMP
