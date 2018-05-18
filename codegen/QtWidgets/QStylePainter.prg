%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
#endif

$beginClassFrom=QPainter

   METHOD new
   //METHOD delete

   METHOD begin
   METHOD drawPrimitive
   METHOD drawControl
   METHOD drawComplexControl
   METHOD drawItemText
   METHOD drawItemPixmap
   METHOD style

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStylePainter()
$internalConstructor=|new1|

$prototype=explicit QStylePainter(QWidget *w)
$internalConstructor=|new2|QWidget *

$prototype=QStylePainter(QPaintDevice *pd, QWidget *w)
$internalConstructor=|new3|QPaintDevice *,QWidget *

//[1]QStylePainter()
//[2]explicit QStylePainter(QWidget *w)
//[3]QStylePainter(QPaintDevice *pd, QWidget *w)

HB_FUNC_STATIC( QSTYLEPAINTER_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStylePainter_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStylePainter_new2();
  }
  else if( ISNUMPAR(2) && ISQPAINTDEVICE(1) && ISQWIDGET(2) )
  {
    QStylePainter_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=bool begin(QWidget *w)
$internalMethod=|bool|begin,begin1|QWidget *

$prototype=bool begin(QPaintDevice *pd, QWidget *w)
$internalMethod=|bool|begin,begin2|QPaintDevice *,QWidget *

//[1]bool begin(QWidget *w)
//[2]bool begin(QPaintDevice *pd, QWidget *w)

HB_FUNC_STATIC( QSTYLEPAINTER_BEGIN )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStylePainter_begin1();
  }
  else if( ISNUMPAR(2) && ISQPAINTDEVICE(1) && ISQWIDGET(2) )
  {
    QStylePainter_begin2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption &opt)
$method=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption &

$prototype=void drawControl(QStyle::ControlElement ce, const QStyleOption &opt)
$method=|void|drawControl|QStyle::ControlElement,const QStyleOption &

$prototype=void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex &opt)
$method=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex &

$prototype=void drawItemText(const QRect &r, int flags, const QPalette &pal, bool enabled, const QString &text, QPalette::ColorRole textRole = QPalette::NoRole)
$method=|void|drawItemText|const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

$prototype=void drawItemPixmap(const QRect &r, int flags, const QPixmap &pixmap)
$method=|void|drawItemPixmap|const QRect &,int,const QPixmap &

$prototype=QStyle *style() const
$method=|QStyle *|style|

#pragma ENDDUMP
