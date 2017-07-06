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

   DATA self_destruction INIT .F.

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
HB_FUNC_STATIC( QSTYLE_DRAWCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    obj->drawComplexControl ( (QStyle::ComplexControl) hb_parni(1), par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWCONTROL )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    obj->drawControl ( (QStyle::ControlElement) hb_parni(1), par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemPixmap ( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMPIXMAP )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->drawItemPixmap ( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPIXMAP(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMTEXT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par7 = ISNIL(7)? (int) QPalette::NoRole : hb_parni(7);
    obj->drawItemText ( PQPAINTER(1), *PQRECT(2), PINT(3), *PQPALETTE(4), PBOOL(5), PQSTRING(6), (QPalette::ColorRole) par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawPrimitive ( PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWPRIMITIVE )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    obj->drawPrimitive ( (QStyle::PrimitiveElement) hb_parni(1), par2, PQPAINTER(3), par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_GENERATEDICONPIXMAP )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par3 = (const QStyleOption *) _qt5xhb_itemGetPtr(3);
    QPixmap * ptr = new QPixmap( obj->generatedIconPixmap ( (QIcon::Mode) hb_parni(1), *PQPIXMAP(2), par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual SubControl hitTestComplexControl ( ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_HITTESTCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    hb_retni( obj->hitTestComplexControl ( (QStyle::ComplexControl) hb_parni(1), par2, *PQPOINT(3), par4 ) );
  }
}


/*
virtual QRect itemPixmapRect ( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMPIXMAPRECT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->itemPixmapRect ( *PQRECT(1), PINT(2), *PQPIXMAP(3) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QRect itemTextRect ( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMTEXTRECT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->itemTextRect ( *PQFONTMETRICS(1), *PQRECT(2), PINT(3), PBOOL(4), PQSTRING(5) ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int layoutSpacing ( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_LAYOUTSPACING )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par4 = ISNIL(4)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(4);
    const QWidget * par5 = ISNIL(5)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(5);
    RINT( obj->layoutSpacing ( (QSizePolicy::ControlType) hb_parni(1), (QSizePolicy::ControlType) hb_parni(2), (Qt::Orientation) hb_parni(3), par4, par5 ) );
  }
}


/*
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_PIXELMETRIC )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
    RINT( obj->pixelMetric ( (QStyle::PixelMetric) hb_parni(1), par2, par3 ) );
  }
}


/*
virtual void polish ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTYLE_POLISH1 )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->polish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QApplication * application )
*/
HB_FUNC_STATIC( QSTYLE_POLISH2 )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->polish ( PQAPPLICATION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QPalette & palette )
*/
HB_FUNC_STATIC( QSTYLE_POLISH3 )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    obj->polish ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void polish ( QWidget * widget )
//[2]virtual void polish ( QApplication * application )
//[3]virtual void polish ( QPalette & palette )

HB_FUNC_STATIC( QSTYLE_POLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTYLE_POLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QSTYLE_POLISH2 );
  }
  else if( ISNUMPAR(1) && ISQPALETTE(1) )
  {
    HB_FUNC_EXEC( QSTYLE_POLISH3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
const QStyle * proxy () const
*/
HB_FUNC_STATIC( QSTYLE_PROXY )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyle * ptr = obj->proxy ();
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}


/*
virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SIZEFROMCONTENTS )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    QSize * ptr = new QSize( obj->sizeFromContents ( (QStyle::ContentsType) hb_parni(1), par2, *PQSIZE(3), par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QIcon standardIcon ( StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDICON )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
    QIcon * ptr = new QIcon( obj->standardIcon ( (QStyle::StandardPixmap) hb_parni(1), par2, par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDPALETTE )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette () );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_STYLEHINT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
    QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) _qt5xhb_itemGetPtr(4);
    RINT( obj->styleHint ( (QStyle::StyleHint) hb_parni(1), par2, par3, par4 ) );
  }
}


/*
virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBCONTROLRECT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
    QRect * ptr = new QRect( obj->subControlRect ( (QStyle::ComplexControl) hb_parni(1), par2, (QStyle::SubControl) hb_parni(3), par4 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QRect subElementRect ( SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBELEMENTRECT )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
    QRect * ptr = new QRect( obj->subElementRect ( (QStyle::SubElement) hb_parni(1), par2, par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void unpolish ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH1 )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unpolish ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * application )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH2 )
{
  QStyle * obj = (QStyle *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->unpolish ( PQAPPLICATION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]virtual void unpolish ( QWidget * widget )
//[2]virtual void unpolish ( QApplication * application )

HB_FUNC_STATIC( QSTYLE_UNPOLISH )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTYLE_UNPOLISH1 );
  }
  else if( ISNUMPAR(1) && ISQAPPLICATION(1) )
  {
    HB_FUNC_EXEC( QSTYLE_UNPOLISH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QRect alignedRect ( Qt::LayoutDirection direction, Qt::Alignment alignment, const QSize & size, const QRect & rectangle )
*/
HB_FUNC_STATIC( QSTYLE_ALIGNEDRECT )
{
  QRect * ptr = new QRect( QStyle::alignedRect ( (Qt::LayoutDirection) hb_parni(1), (Qt::Alignment) hb_parni(2), *PQSIZE(3), *PQRECT(4) ) );
  _qt5xhb_createReturnClass ( ptr, "QRECT", true );
}


/*
static int sliderPositionFromValue ( int min, int max, int logicalValue, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERPOSITIONFROMVALUE )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTLOG(5) )
  {
    RINT( QStyle::sliderPositionFromValue ( PINT(1), PINT(2), PINT(3), PINT(4), OPBOOL(5,false) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
static int sliderValueFromPosition ( int min, int max, int position, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERVALUEFROMPOSITION )
{
  if( ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISOPTLOG(5) )
  {
    RINT( QStyle::sliderValueFromPosition ( PINT(1), PINT(2), PINT(3), PINT(4), OPBOOL(5,false) ) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


/*
static Qt::Alignment visualAlignment ( Qt::LayoutDirection direction, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QSTYLE_VISUALALIGNMENT )
{
  if( ISNUM(1) && ISNUM(2) )
  {
    hb_retni( QStyle::visualAlignment ( (Qt::LayoutDirection) hb_parni(1), (Qt::Alignment) hb_parni(2) ) );
  }
}


/*
static QPoint visualPos ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )
*/
HB_FUNC_STATIC( QSTYLE_VISUALPOS )
{
  QPoint * ptr = new QPoint( QStyle::visualPos ( (Qt::LayoutDirection) hb_parni(1), *PQRECT(2), *PQPOINT(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
}


/*
static QRect visualRect ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )
*/
HB_FUNC_STATIC( QSTYLE_VISUALRECT )
{
  QRect * ptr = new QRect( QStyle::visualRect ( (Qt::LayoutDirection) hb_parni(1), *PQRECT(2), *PQRECT(3) ) );
  _qt5xhb_createReturnClass ( ptr, "QRECT", true );
}




#pragma ENDDUMP
