/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
REQUEST QICON
REQUEST QPALETTE
REQUEST QPOINT
#endif

CLASS QStyle INHERIT QObject

   DATA class_id INIT Class_Id_QStyle
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStyle>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStyle>
#endif
#endif


HB_FUNC_STATIC( QSTYLE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStyle * obj = (QStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
virtual void drawComplexControl ( ComplexControl control, const QStyleOptionComplex * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qtxhb_itemGetPtr(2);
    QPainter * par3 = (QPainter *) _qtxhb_itemGetPtr(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    obj->drawComplexControl (  (QStyle::ComplexControl) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawControl ( ControlElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWCONTROL )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) _qtxhb_itemGetPtr(2);
    QPainter * par3 = (QPainter *) _qtxhb_itemGetPtr(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    obj->drawControl (  (QStyle::ControlElement) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemPixmap ( QPainter * painter, const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMPIXMAP )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
    QPixmap * par4 = (QPixmap *) _qtxhb_itemGetPtr(4);
    obj->drawItemPixmap ( par1, *par2, (int) hb_parni(3), *par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawItemText ( QPainter * painter, const QRect & rectangle, int alignment, const QPalette & palette, bool enabled, const QString & text, QPalette::ColorRole textRole = QPalette::NoRole ) const
*/
HB_FUNC_STATIC( QSTYLE_DRAWITEMTEXT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPainter * par1 = (QPainter *) _qtxhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
    QPalette * par4 = (QPalette *) _qtxhb_itemGetPtr(4);
    QString par6 = QLatin1String( hb_parc(6) );
    int par7 = ISNIL(7)? (int) QPalette::NoRole : hb_parni(7);
    obj->drawItemText ( par1, *par2, (int) hb_parni(3), *par4, (bool) hb_parl(5), par6,  (QPalette::ColorRole) par7 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void drawPrimitive ( PrimitiveElement element, const QStyleOption * option, QPainter * painter, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_DRAWPRIMITIVE )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) _qtxhb_itemGetPtr(2);
    QPainter * par3 = (QPainter *) _qtxhb_itemGetPtr(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    obj->drawPrimitive (  (QStyle::PrimitiveElement) par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPixmap generatedIconPixmap ( QIcon::Mode iconMode, const QPixmap & pixmap, const QStyleOption * option ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_GENERATEDICONPIXMAP )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QPixmap * par2 = (QPixmap *) _qtxhb_itemGetPtr(2);
    const QStyleOption * par3 = (const QStyleOption *) _qtxhb_itemGetPtr(3);
    QPixmap * ptr = new QPixmap( obj->generatedIconPixmap (  (QIcon::Mode) par1, *par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
virtual SubControl hitTestComplexControl ( ComplexControl control, const QStyleOptionComplex * option, const QPoint & position, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_HITTESTCOMPLEXCONTROL )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qtxhb_itemGetPtr(2);
    QPoint * par3 = (QPoint *) _qtxhb_itemGetPtr(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    hb_retni( obj->hitTestComplexControl (  (QStyle::ComplexControl) par1, par2, *par3, par4 ) );
  }
}


/*
virtual QRect itemPixmapRect ( const QRect & rectangle, int alignment, const QPixmap & pixmap ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMPIXMAPRECT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qtxhb_itemGetPtr(1);
    QPixmap * par3 = (QPixmap *) _qtxhb_itemGetPtr(3);
    QRect * ptr = new QRect( obj->itemPixmapRect ( *par1, (int) hb_parni(2), *par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QRect itemTextRect ( const QFontMetrics & metrics, const QRect & rectangle, int alignment, bool enabled, const QString & text ) const
*/
HB_FUNC_STATIC( QSTYLE_ITEMTEXTRECT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFontMetrics * par1 = (QFontMetrics *) _qtxhb_itemGetPtr(1);
    QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
    QString par5 = QLatin1String( hb_parc(5) );
    QRect * ptr = new QRect( obj->itemTextRect ( *par1, *par2, (int) hb_parni(3), (bool) hb_parl(4), par5 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int layoutSpacing ( QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_LAYOUTSPACING )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    const QStyleOption * par4 = ISNIL(4)? 0 : (const QStyleOption *) _qtxhb_itemGetPtr(4);
    const QWidget * par5 = ISNIL(5)? 0 : (const QWidget *) _qtxhb_itemGetPtr(5);
    hb_retni( obj->layoutSpacing (  (QSizePolicy::ControlType) par1,  (QSizePolicy::ControlType) par2,  (Qt::Orientation) par3, par4, par5 ) );
  }
}


/*
virtual int pixelMetric ( PixelMetric metric, const QStyleOption * option = 0, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_PIXELMETRIC )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qtxhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qtxhb_itemGetPtr(3);
    hb_retni( obj->pixelMetric (  (QStyle::PixelMetric) par1, par2, par3 ) );
  }
}


/*
virtual void polish ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTYLE_POLISH1 )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->polish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QApplication * application )
*/
HB_FUNC_STATIC( QSTYLE_POLISH2 )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QApplication * par1 = (QApplication *) _qtxhb_itemGetPtr(1);
    obj->polish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void polish ( QPalette & palette )
*/
HB_FUNC_STATIC( QSTYLE_POLISH3 )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qtxhb_itemGetPtr(1);
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
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QStyle * ptr = obj->proxy (  );
    _qt4xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}


/*
virtual QSize sizeFromContents ( ContentsType type, const QStyleOption * option, const QSize & contentsSize, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SIZEFROMCONTENTS )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) _qtxhb_itemGetPtr(2);
    QSize * par3 = (QSize *) _qtxhb_itemGetPtr(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    QSize * ptr = new QSize( obj->sizeFromContents (  (QStyle::ContentsType) par1, par2, *par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QIcon standardIcon ( StandardPixmap standardIcon, const QStyleOption * option = 0, const QWidget * widget = 0 ) const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDICON )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qtxhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qtxhb_itemGetPtr(3);
    QIcon * ptr = new QIcon( obj->standardIcon (  (QStyle::StandardPixmap) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}


/*
virtual QPalette standardPalette () const
*/
HB_FUNC_STATIC( QSTYLE_STANDARDPALETTE )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
virtual int styleHint ( StyleHint hint, const QStyleOption * option = 0, const QWidget * widget = 0, QStyleHintReturn * returnData = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_STYLEHINT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qtxhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qtxhb_itemGetPtr(3);
    QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) _qtxhb_itemGetPtr(4);
    hb_retni( obj->styleHint (  (QStyle::StyleHint) par1, par2, par3, par4 ) );
  }
}


/*
virtual QRect subControlRect ( ComplexControl control, const QStyleOptionComplex * option, SubControl subControl, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBCONTROLRECT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qtxhb_itemGetPtr(2);
    int par3 = hb_parni(3);
    const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qtxhb_itemGetPtr(4);
    QRect * ptr = new QRect( obj->subControlRect (  (QStyle::ComplexControl) par1, par2,  (QStyle::SubControl) par3, par4 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual QRect subElementRect ( SubElement element, const QStyleOption * option, const QWidget * widget = 0 ) const = 0
*/
HB_FUNC_STATIC( QSTYLE_SUBELEMENTRECT )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    const QStyleOption * par2 = (const QStyleOption *) _qtxhb_itemGetPtr(2);
    const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qtxhb_itemGetPtr(3);
    QRect * ptr = new QRect( obj->subElementRect (  (QStyle::SubElement) par1, par2, par3 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
virtual void unpolish ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH1 )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->unpolish ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void unpolish ( QApplication * application )
*/
HB_FUNC_STATIC( QSTYLE_UNPOLISH2 )
{
  QStyle * obj = (QStyle *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QApplication * par1 = (QApplication *) _qtxhb_itemGetPtr(1);
    obj->unpolish ( par1 );
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
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  QSize * par3 = (QSize *) _qtxhb_itemGetPtr(3);
  QRect * par4 = (QRect *) _qtxhb_itemGetPtr(4);
  QRect * ptr = new QRect( QStyle::alignedRect (  (Qt::LayoutDirection) par1,  (Qt::Alignment) par2, *par3, *par4 ) );
  _qt4xhb_createReturnClass ( ptr, "QRECT", true );
}


/*
static int sliderPositionFromValue ( int min, int max, int logicalValue, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERPOSITIONFROMVALUE )
{
  hb_retni( QStyle::sliderPositionFromValue ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (bool) ISNIL(5)? false : hb_parl(5) ) );
}


/*
static int sliderValueFromPosition ( int min, int max, int position, int span, bool upsideDown = false )
*/
HB_FUNC_STATIC( QSTYLE_SLIDERVALUEFROMPOSITION )
{
  hb_retni( QStyle::sliderValueFromPosition ( (int) hb_parni(1), (int) hb_parni(2), (int) hb_parni(3), (int) hb_parni(4), (bool) ISNIL(5)? false : hb_parl(5) ) );
}


/*
static Qt::Alignment visualAlignment ( Qt::LayoutDirection direction, Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QSTYLE_VISUALALIGNMENT )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  hb_retni( QStyle::visualAlignment (  (Qt::LayoutDirection) par1,  (Qt::Alignment) par2 ) );
}


/*
static QPoint visualPos ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QPoint & logicalPosition )
*/
HB_FUNC_STATIC( QSTYLE_VISUALPOS )
{
  int par1 = hb_parni(1);
  QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
  QPoint * par3 = (QPoint *) _qtxhb_itemGetPtr(3);
  QPoint * ptr = new QPoint( QStyle::visualPos (  (Qt::LayoutDirection) par1, *par2, *par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
}


/*
static QRect visualRect ( Qt::LayoutDirection direction, const QRect & boundingRectangle, const QRect & logicalRectangle )
*/
HB_FUNC_STATIC( QSTYLE_VISUALRECT )
{
  int par1 = hb_parni(1);
  QRect * par2 = (QRect *) _qtxhb_itemGetPtr(2);
  QRect * par3 = (QRect *) _qtxhb_itemGetPtr(3);
  QRect * ptr = new QRect( QStyle::visualRect (  (Qt::LayoutDirection) par1, *par2, *par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QRECT", true );
}




#pragma ENDDUMP
