%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution
   METHOD pageLayout
   METHOD pdfVersion
   METHOD setPageLayout
   METHOD setPageMargins
   METHOD setPageOrientation
   METHOD setPdfVersion

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPdfWriter(const QString & filename)
$internalConstructor=|new1|const QString &

$prototype=explicit QPdfWriter(QIODevice * device)
$internalConstructor=|new2|QIODevice *

//[1]explicit QPdfWriter(const QString & filename)
//[2]explicit QPdfWriter(QIODevice * device)

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QPdfWriter_new1();
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QPdfWriter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString title() const
$method=|QString|title|

$prototype=void setTitle(const QString & title)
$method=|void|setTitle|const QString &

$prototype=QString creator() const
$method=|QString|creator|

$prototype=void setCreator(const QString & creator)
$method=|void|setCreator|const QString &

$prototype=bool newPage()
$method=|bool|newPage|

$prototype=void setPageSize(PageSize size) (obsolet)
$internalMethod=|void|setPageSize,setPageSize1|QPagedPaintDevice::PageSize

$prototype=bool setPageSize(const QPageSize &pageSize)
$internalMethod=5,3,0|bool|setPageSize,setPageSize2|const QPageSize &

//[1]void setPageSize(PageSize size) (obsolet)
//[2]bool setPageSize(const QPageSize &pageSize)

HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPdfWriter_setPageSize1();
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    QPdfWriter_setPageSize2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void setPageSizeMM(const QSizeF & size) (obsolet)
$method=|void|setPageSizeMM|const QSizeF &

$prototype=int resolution() const
$method=5,3,0|int|resolution|

$prototype=void setResolution(int resolution)
$method=5,3,0|void|setResolution|int

$prototype=QPageLayout pageLayout() const
$method=5,3,0|QPageLayout|pageLayout|

$prototype=bool setPageLayout(const QPageLayout &newPageLayout)
$method=5,3,0|bool|setPageLayout|const QPageLayout &

$prototype=PdfVersion pdfVersion() const
$method=5,10,0|QPagedPaintDevice::PdfVersion|pdfVersion|

$prototype=bool setPageMargins(const QMarginsF &margins)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins1|const QMarginsF &

$prototype=bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
$internalMethod=5,3,0|bool|setPageMargins,setPageMargins2|const QMarginsF &,QPageLayout::Unit

//[1]bool setPageMargins(const QMarginsF &margins)
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPDFWRITER_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    QPdfWriter_setPageMargins1();
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    QPdfWriter_setPageMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool setPageOrientation(QPageLayout::Orientation orientation)
$method=5,3,0|bool|setPageOrientation|QPageLayout::Orientation

$prototype=void setPdfVersion(PdfVersion version)
$method=5,10,0|void|setPdfVersion|QPagedPaintDevice::PdfVersion

$prototype=virtual void setMargins(const Margins &m) override (obsolete)

#pragma ENDDUMP
