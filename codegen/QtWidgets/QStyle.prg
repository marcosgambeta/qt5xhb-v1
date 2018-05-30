%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
   METHOD itemTextRect
   METHOD layoutSpacing
   METHOD pixelMetric
   METHOD polish
   METHOD proxy
   METHOD sizeFromContents
   METHOD standardIcon
   METHOD standardPalette
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish
   METHOD alignedRect
   METHOD sliderPositionFromValue
   METHOD sliderValueFromPosition
   METHOD visualAlignment
   METHOD visualPos
   METHOD visualRect

   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void drawComplexControl ( ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
$virtualMethod=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

$prototype=virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
$virtualMethod=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual void drawItemPixmap ( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
$virtualMethod=|void|drawItemPixmap|QPainter *,const QRect &,int,const QPixmap &

$prototype=virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
$virtualMethod=|void|drawItemText|QPainter *,const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

$prototype=virtual void drawPrimitive ( PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
$virtualMethod=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

$prototype=virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0
$virtualMethod=|QPixmap|generatedIconPixmap|QIcon::Mode,const QPixmap &,const QStyleOption *

$prototype=virtual SubControl hitTestComplexControl ( ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0
$virtualMethod=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=0

$prototype=virtual QRect itemPixmapRect ( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
$virtualMethod=|QRect|itemPixmapRect|const QRect &,int,const QPixmap &

$prototype=virtual QRect itemTextRect ( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const
$virtualMethod=|QRect|itemTextRect|const QFontMetrics &,const QRect &,int,bool,const QString &

$prototype=int layoutSpacing ( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$method=|int|layoutSpacing|QSizePolicy::ControlType,QSizePolicy::ControlType,Qt::Orientation,const QStyleOption *=0,const QWidget *=0

$prototype=virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0
$virtualMethod=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

$prototype=virtual void polish ( QWidget * widget )
$internalVirtualMethod=|void|polish,polish1|QWidget *

$prototype=virtual void polish ( QApplication * application )
$internalVirtualMethod=|void|polish,polish2|QApplication *

$prototype=virtual void polish ( QPalette & palette )
$internalVirtualMethod=|void|polish,polish3|QPalette &

//[1]virtual void polish ( QWidget * widget )
//[2]virtual void polish ( QApplication * application )
//[3]virtual void polish ( QPalette & palette )

HB_FUNC_STATIC( QSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QStyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QStyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=const QStyle * proxy () const
$method=|const QStyle *|proxy|

$prototype=virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0
$virtualMethod=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

$prototype=QIcon standardIcon ( StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
$method=|QIcon|standardIcon|QStyle::StandardPixmap,const QStyleOption *=0,const QWidget *=0

$prototype=virtual QPalette standardPalette () const
$virtualMethod=|QPalette|standardPalette|

$prototype=virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0
$virtualMethod=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

$prototype=virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const = 0
$virtualMethod=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

$prototype=virtual QRect subElementRect ( SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0
$virtualMethod=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

$prototype=virtual void unpolish ( QWidget * widget )
$internalVirtualMethod=|void|unpolish,unpolish1|QWidget *

$prototype=virtual void unpolish ( QApplication * application )
$internalVirtualMethod=|void|unpolish,unpolish2|QApplication *

//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * application )

HB_FUNC_STATIC( QSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStyle_unpolish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QStyle_unpolish2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QRect alignedRect ( Qt::LayoutDirection direction, Qt::Alignment alignment, const QSize & size, const QRect & rectangle )
$staticMethod=|QRect|alignedRect|Qt::LayoutDirection,Qt::Alignment,const QSize &,const QRect &

$prototype=static int sliderPositionFromValue ( int min, int max, int logicalValue, int span, bool upsideDown = false )
$staticMethod=|int|sliderPositionFromValue|int,int,int,int,bool=false

$prototype=static int sliderValueFromPosition ( int min, int max, int position, int span, bool upsideDown = false )
$staticMethod=|int|sliderValueFromPosition|int,int,int,int,bool=false

$prototype=static Qt::Alignment visualAlignment ( Qt::LayoutDirection direction, Qt::Alignment alignment )
$staticMethod=|Qt::Alignment|visualAlignment|Qt::LayoutDirection,Qt::Alignment

$prototype=static QPoint visualPos ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )
$staticMethod=|QPoint|visualPos|Qt::LayoutDirection,const QRect &,const QPoint &

$prototype=static QRect visualRect ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )
$staticMethod=|QRect|visualRect|Qt::LayoutDirection,const QRect &,const QRect &

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$signal=|tabMoved(int,int)
$endSignals

#pragma ENDDUMP
