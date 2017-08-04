$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QPAGELAYOUT
#endif

CLASS QPagedPaintDevice INHERIT QPaintDevice

   DATA self_destruction INIT .F.

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

/*
virtual bool newPage() = 0
*/
$method=|bool|newPage|

/*
PageSize pageSize() const
*/
$method=|QPagedPaintDevice::PageSize|pageSize|

/*
virtual void setPageSize(PageSize size)
*/
$method=|void|setPageSize|QPagedPaintDevice::PageSize

/*
QSizeF pageSizeMM() const
*/
$method=|QSizeF|pageSizeMM|

/*
virtual void setPageSizeMM(const QSizeF & size)
*/
$method=|void|setPageSizeMM|const QSizeF &

/*
QPageLayout pageLayout() const
*/
$method=|QPageLayout|pageLayout|

/*
bool setPageLayout(const QPageLayout &pageLayout)
*/
$method=|bool|setPageLayout|const QPageLayout &

/*
bool setPageOrientation(QPageLayout::Orientation orientation)
*/
$method=|bool|setPageOrientation|QPageLayout::Orientation

/*
bool setPageMargins(const QMarginsF &margins)
*/
$internalMethod=|bool|setPageMargins,setPageMargins1|const QMarginsF &

/*
bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/
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
