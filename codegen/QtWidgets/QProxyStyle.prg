%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QCommonStyle

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QProxyStyle(QStyle *style = 0)
$internalConstructor=|new1|QStyle *=0

$prototype=QProxyStyle(const QString &key)
$internalConstructor=|new2|const QString &

//[1]QProxyStyle(QStyle *style = 0)
//[2]QProxyStyle(const QString &key)

HB_FUNC_STATIC( QPROXYSTYLE_NEW )
{
  if( ISBETWEEN(0,1) && (ISOBJECT(1)||ISNIL(1)) )
  {
    QProxyStyle_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QProxyStyle_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QStyle *baseStyle() const
$method=|QStyle *|baseStyle|

$prototype=void setBaseStyle(QStyle *style)
$method=|void|setBaseStyle|QStyle *

$prototype=void drawPrimitive(PrimitiveElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = 0) const
$method=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=void drawControl(ControlElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = 0) const
$method=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=void drawComplexControl(ComplexControl control, const QStyleOptionComplex *option, QPainter *painter, const QWidget *widget = 0) const
$method=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=void drawItemText(QPainter *painter, const QRect &rect, int flags, const QPalette &pal, bool enabled,const QString &text, QPalette::ColorRole textRole = QPalette::NoRole) const
$method=|void|drawItemText|QPainter *,const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

$prototype=virtual void drawItemPixmap(QPainter *painter, const QRect &rect, int alignment, const QPixmap &pixmap) const
$virtualMethod=|void|drawItemPixmap|QPainter *,const QRect &,int,const QPixmap &

$prototype=QSize sizeFromContents(ContentsType type, const QStyleOption *option, const QSize &size, const QWidget *widget) const
$method=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *

$prototype=QRect subElementRect(SubElement element, const QStyleOption *option, const QWidget *widget) const
$method=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *

$prototype=QRect subControlRect(ComplexControl cc, const QStyleOptionComplex *opt, SubControl sc, const QWidget *widget) const
$method=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *

$prototype=QRect itemTextRect(const QFontMetrics &fm, const QRect &r, int flags, bool enabled, const QString &text) const
$method=|QRect|itemTextRect|const QFontMetrics &,const QRect &,int,bool,const QString &

$prototype=QRect itemPixmapRect(const QRect &r, int flags, const QPixmap &pixmap) const
$method=|QRect|itemPixmapRect|const QRect &,int,const QPixmap &

$prototype=SubControl hitTestComplexControl(ComplexControl control, const QStyleOptionComplex *option, const QPoint &pos, const QWidget *widget = 0) const
$method=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=0

$prototype=int styleHint(StyleHint hint, const QStyleOption *option = 0, const QWidget *widget = 0, QStyleHintReturn *returnData = 0) const
$method=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=int pixelMetric(PixelMetric metric, const QStyleOption *option = 0, const QWidget *widget = 0) const
$method=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2,Qt::Orientation orientation, const QStyleOption *option = 0, const QWidget *widget = 0) const
$method=|int|layoutSpacing|QSizePolicy::ControlType,QSizePolicy::ControlType,Qt::Orientation,const QStyleOption *=0,const QWidget *=0

$prototype=QIcon standardIcon(StandardPixmap standardIcon, const QStyleOption *option = 0, const QWidget *widget = 0) const
$method=|QIcon|standardIcon|QStyle::StandardPixmap,const QStyleOption *=0,const QWidget *=0

$prototype=QPixmap standardPixmap(StandardPixmap standardPixmap, const QStyleOption *opt, const QWidget *widget = 0) const
$method=|QPixmap|standardPixmap|QStyle::StandardPixmap,const QStyleOption *,const QWidget *=0

$prototype=QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap &pixmap, const QStyleOption *opt) const
$method=|QPixmap|generatedIconPixmap|QIcon::Mode,const QPixmap &,const QStyleOption *

$prototype=QPalette standardPalette() const
$method=|QPalette|standardPalette|

$prototype=void polish(QWidget *widget)
$internalMethod=|void|polish,polish1|QWidget *

$prototype=void polish(QPalette &pal)
$internalMethod=|void|polish,polish2|QPalette &

$prototype=void polish(QApplication *app)
$internalMethod=|void|polish,polish3|QApplication *

//[1]void polish(QWidget *widget)
//[2]void polish(QPalette &pal)
//[3]void polish(QApplication *app)

HB_FUNC_STATIC( QPROXYSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QProxyStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QProxyStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QProxyStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=polish

$prototype=void unpolish(QWidget *widget)
$internalMethod=|void|unpolish,unpolish1|QWidget *

$prototype=void unpolish(QApplication *app)
$internalMethod=|void|unpolish,unpolish2|QApplication *

//[1]void unpolish(QWidget *widget)
//[2]void unpolish(QApplication *app)

HB_FUNC_STATIC( QPROXYSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QProxyStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QProxyStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=unpolish

#pragma ENDDUMP
