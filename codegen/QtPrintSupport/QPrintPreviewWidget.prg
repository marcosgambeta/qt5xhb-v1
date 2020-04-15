%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtPrintSupport

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0,Qt::WindowFlags=0

$prototype=explicit QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new2|QWidget *=0,Qt::WindowFlags=0

/*
[1]QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
[2]QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && ISOPTQWIDGET(2) && ISOPTNUM(3) )
  {
    QPrintPreviewWidget_new1();
  }
  else if( ISBETWEEN(0,2) && ISOPTQWIDGET(1) && ISOPTNUM(2) )
  {
    QPrintPreviewWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int currentPage () const
$method=|int|currentPage|

$prototype=QPrinter::Orientation orientation () const
$method=|QPrinter::Orientation|orientation|

$prototype=int pageCount () const
$method=|int|pageCount|

$prototype=ViewMode viewMode () const
$method=|QPrintPreviewWidget::ViewMode|viewMode|

$prototype=qreal zoomFactor () const
$method=|qreal|zoomFactor|

$prototype=ZoomMode zoomMode () const
$method=|QPrintPreviewWidget::ZoomMode|zoomMode|

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototype=void fitInView ()
$method=|void|fitInView|

$prototype=void fitToWidth ()
$method=|void|fitToWidth|

$prototype=void print ()
$method=|void|print|

$prototype=void setAllPagesViewMode ()
$method=|void|setAllPagesViewMode|

$prototype=void setCurrentPage ( int page )
$method=|void|setCurrentPage|int

$prototype=void setFacingPagesViewMode ()
$method=|void|setFacingPagesViewMode|

$prototype=void setLandscapeOrientation ()
$method=|void|setLandscapeOrientation|

$prototype=void setOrientation ( QPrinter::Orientation orientation )
$method=|void|setOrientation|QPrinter::Orientation

$prototype=void setPortraitOrientation ()
$method=|void|setPortraitOrientation|

$prototype=void setSinglePageViewMode ()
$method=|void|setSinglePageViewMode|

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QPrintPreviewWidget::ViewMode

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

$prototype=void setZoomMode ( ZoomMode zoomMode )
$method=|void|setZoomMode|QPrintPreviewWidget::ZoomMode

$prototype=void updatePreview ()
$method=|void|updatePreview|

$prototype=void zoomIn ( qreal factor = 1.1 )
$method=|void|zoomIn|qreal=1.1

$prototype=void zoomOut ( qreal factor = 1.1 )
$method=|void|zoomOut|qreal=1.1

$beginSignals
$signal=|paintRequested(QPrinter*)
$signal=|previewChanged()
$endSignals

#pragma ENDDUMP
