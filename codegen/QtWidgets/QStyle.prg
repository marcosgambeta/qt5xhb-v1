$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QICON
REQUEST QPALETTE
REQUEST QPOINT
#endif

CLASS QStyle INHERIT QObject

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
   METHOD polish1
   METHOD polish2
   METHOD polish3
   METHOD polish
   METHOD proxy
   METHOD sizeFromContents
   METHOD standardIcon
   METHOD standardPalette
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish1
   METHOD unpolish2
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

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual void drawComplexControl ( ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
$method=|void|drawComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,QPainter *,const QWidget *=0

/*
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
$method=|void|drawControl|QStyle::ControlElement,const QStyleOption *,QPainter *,const QWidget *=0

/*
virtual void drawItemPixmap ( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
$method=|void|drawItemPixmap|QPainter *,const QRect &,int,const QPixmap &

/*
virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
$method=|void|drawItemText|QPainter *,const QRect &,int,const QPalette &,bool,const QString &,QPalette::ColorRole=QPalette::NoRole

/*
virtual void drawPrimitive ( PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
$method=|void|drawPrimitive|QStyle::PrimitiveElement,const QStyleOption *,QPainter *,const QWidget *=0

/*
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0
*/
$method=|QPixmap|generatedIconPixmap|QIcon::Mode,const QPixmap &,const QStyleOption *

/*
virtual SubControl hitTestComplexControl ( ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0
*/
$method=|QStyle::SubControl|hitTestComplexControl|QStyle::ComplexControl,const QStyleOptionComplex *,const QPoint &,const QWidget *=0

/*
virtual QRect itemPixmapRect ( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
$method=|QRect|itemPixmapRect|const QRect &,int,const QPixmap &

/*
virtual QRect itemTextRect ( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const
*/
$method=|QRect|itemTextRect|const QFontMetrics &,const QRect &,int,bool,const QString &

/*
int layoutSpacing ( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
$method=|int|layoutSpacing|QSizePolicy::ControlType,QSizePolicy::ControlType,Qt::Orientation,const QStyleOption *=0,const QWidget *=0

/*
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0
*/
$method=|int|pixelMetric|QStyle::PixelMetric,const QStyleOption *=0,const QWidget *=0

/*
virtual void polish ( QWidget * widget )
*/
$internalMethod=|void|polish,polish1|QWidget *

/*
virtual void polish ( QApplication * application )
*/
$internalMethod=|void|polish,polish2|QApplication *

/*
virtual void polish ( QPalette & palette )
*/
$internalMethod=|void|polish,polish3|QPalette &

//[1]virtual void polish ( QWidget * widget )
//[2]virtual void polish ( QApplication * application )
//[3]virtual void polish ( QPalette & palette )

HB_FUNC_STATIC( QSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QSTyle_polish1();
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    QSTyle_polish2();
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    QSTyle_polish3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QStyle * proxy () const
*/
$method=|const QStyle *|proxy|

/*
virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0
*/
$method=|QSize|sizeFromContents|QStyle::ContentsType,const QStyleOption *,const QSize &,const QWidget *=0

/*
QIcon standardIcon ( StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
$method=|QIcon|standardIcon|QStyle::StandardPixmap,const QStyleOption *=0,const QWidget *=0

/*
virtual QPalette standardPalette () const
*/
$method=|QPalette|standardPalette|

/*
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0
*/
$method=|int|styleHint|QStyle::StyleHint,const QStyleOption *=0,const QWidget *=0,QStyleHintReturn *=0

/*
virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const = 0
*/
$method=|QRect|subControlRect|QStyle::ComplexControl,const QStyleOptionComplex *,QStyle::SubControl,const QWidget *=0

/*
virtual QRect subElementRect ( SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0
*/
$method=|QRect|subElementRect|QStyle::SubElement,const QStyleOption *,const QWidget *=0

/*
virtual void unpolish ( QWidget * widget )
*/
$internalMethod=|void|unpolish,unpolish1|QWidget *

/*
virtual void unpolish ( QApplication * application )
*/
$internalMethod=|void|unpolish,unpolish2|QApplication *

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

/*
static QRect alignedRect ( Qt::LayoutDirection direction, Qt::Alignment alignment, const QSize & size, const QRect & rectangle )
*/
$staticMethod=|QRect|alignedRect|Qt::LayoutDirection,Qt::Alignment,const QSize &,const QRect &

/*
static int sliderPositionFromValue ( int min, int max, int logicalValue, int span, bool upsideDown = false )
*/
$staticMethod=|int|sliderPositionFromValue|int,int,int,int,bool=false

/*
static int sliderValueFromPosition ( int min, int max, int position, int span, bool upsideDown = false )
*/
$staticMethod=|int|sliderValueFromPosition|int,int,int,int,bool=false

/*
static Qt::Alignment visualAlignment ( Qt::LayoutDirection direction, Qt::Alignment alignment )
*/
$staticMethod=|Qt::Alignment|visualAlignment|Qt::LayoutDirection,Qt::Alignment

/*
static QPoint visualPos ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )
*/
$staticMethod=|QPoint|visualPos|Qt::LayoutDirection,const QRect &,const QPoint &

/*
static QRect visualRect ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )
*/
$staticMethod=|QRect|visualRect|Qt::LayoutDirection,const QRect &,const QRect &

#pragma ENDDUMP
