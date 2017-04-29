/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSTYLE
REQUEST QSIZE
REQUEST QRECT
REQUEST QICON
REQUEST QPIXMAP
REQUEST QPALETTE
#endif

CLASS QProxyStyle INHERIT QCommonStyle

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD baseStyle
   METHOD setBaseStyle
   METHOD drawPrimitive
   METHOD drawControl
   METHOD drawComplexControl
   METHOD drawItemText
   METHOD drawItemPixmap
   METHOD sizeFromContents
   METHOD subElementRect
   METHOD subControlRect
   METHOD itemTextRect
   METHOD itemPixmapRect
   METHOD hitTestComplexControl
   METHOD styleHint
   METHOD pixelMetric
   METHOD layoutSpacing
   METHOD standardIcon
   METHOD standardPixmap
   METHOD generatedIconPixmap
   METHOD standardPalette
   METHOD polish
   METHOD unpolish

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QProxyStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QProxyStyle>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QProxyStyle>
#endif

/*
QProxyStyle(QStyle *style = 0)
*/
void QProxyStyle_new1 ()
{
  QStyle * par1 = ISNIL(1)? 0 : (QStyle *) _qt5xhb_itemGetPtr(1);
  QProxyStyle * o = new QProxyStyle ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QProxyStyle(const QString &key)
*/
void QProxyStyle_new2 ()
{
  QProxyStyle * o = new QProxyStyle ( PQSTRING(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}

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

HB_FUNC_STATIC( QPROXYSTYLE_DELETE )
{
  QProxyStyle * obj = (QProxyStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
}

/*
QStyle *baseStyle() const
*/
HB_FUNC_STATIC( QPROXYSTYLE_BASESTYLE )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QStyle * ptr = obj->baseStyle (  );
    _qt5xhb_createReturnClass ( ptr, "QSTYLE" );
  }
}

/*
void setBaseStyle(QStyle *style)
*/
HB_FUNC_STATIC( QPROXYSTYLE_SETBASESTYLE )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSTYLE(1) )
    {
      QStyle * par1 = (QStyle *) _qt5xhb_itemGetPtr(1);
      obj->setBaseStyle ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawPrimitive(PrimitiveElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWPRIMITIVE )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && ISOPTQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      QPainter * par3 = (QPainter *) _qt5xhb_itemGetPtr(3);
      const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
      obj->drawPrimitive (  (QStyle::PrimitiveElement) par1, par2, par3, par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawControl(ControlElement element, const QStyleOption *option, QPainter *painter, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWCONTROL )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && ISOPTQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      QPainter * par3 = (QPainter *) _qt5xhb_itemGetPtr(3);
      const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
      obj->drawControl (  (QStyle::ControlElement) par1, par2, par3, par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawComplexControl(ComplexControl control, const QStyleOptionComplex *option, QPainter *painter, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWCOMPLEXCONTROL )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && ISOPTQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
      QPainter * par3 = (QPainter *) _qt5xhb_itemGetPtr(3);
      const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
      obj->drawComplexControl (  (QStyle::ComplexControl) par1, par2, par3, par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void drawItemText(QPainter *painter, const QRect &rect, int flags, const QPalette &pal, bool enabled,const QString &text, QPalette::ColorRole textRole = QPalette::NoRole) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWITEMTEXT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPALETTE(4) && ISLOG(5) && ISCHAR(6) && ISOPTNUM(7) )
    {
      QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
      QRect * par2 = (QRect *) _qt5xhb_itemGetPtr(2);
      QPalette * par4 = (QPalette *) _qt5xhb_itemGetPtr(4);
      int par7 = ISNIL(7)? (int) QPalette::NoRole : hb_parni(7);
      obj->drawItemText ( par1, *par2, (int) hb_parni(3), *par4, PBOOL(5), PQSTRING(6),  (QPalette::ColorRole) par7 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void drawItemPixmap(QPainter *painter, const QRect &rect, int alignment, const QPixmap &pixmap) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_DRAWITEMPIXMAP )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPAINTER(1) && ISQRECT(2) && ISNUM(3) && ISQPIXMAP(4) )
    {
      QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
      QRect * par2 = (QRect *) _qt5xhb_itemGetPtr(2);
      QPixmap * par4 = (QPixmap *) _qt5xhb_itemGetPtr(4);
      obj->drawItemPixmap ( par1, *par2, (int) hb_parni(3), *par4 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeFromContents(ContentsType type, const QStyleOption *option, const QSize &size, const QWidget *widget) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SIZEFROMCONTENTS )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && ISQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      QSize * par3 = (QSize *) _qt5xhb_itemGetPtr(3);
      const QWidget * par4 = (const QWidget *) _qt5xhb_itemGetPtr(4);
      QSize * ptr = new QSize( obj->sizeFromContents (  (QStyle::ContentsType) par1, par2, *par3, par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect subElementRect(SubElement element, const QStyleOption *option, const QWidget *widget) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SUBELEMENTRECT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTION(2) && ISQWIDGET(3) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      const QWidget * par3 = (const QWidget *) _qt5xhb_itemGetPtr(3);
      QRect * ptr = new QRect( obj->subElementRect (  (QStyle::SubElement) par1, par2, par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect subControlRect(ComplexControl cc, const QStyleOptionComplex *opt, SubControl sc, const QWidget *widget) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_SUBCONTROLRECT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISNUM(3) && ISQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
      int par3 = hb_parni(3);
      const QWidget * par4 = (const QWidget *) _qt5xhb_itemGetPtr(4);
      QRect * ptr = new QRect( obj->subControlRect (  (QStyle::ComplexControl) par1, par2,  (QStyle::SubControl) par3, par4 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect itemTextRect(const QFontMetrics &fm, const QRect &r, int flags, bool enabled, const QString &text) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_ITEMTEXTRECT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQFONTMETRICS(1) && ISQRECT(2) && ISNUM(3) && ISLOG(4) && ISCHAR(5) )
    {
      QFontMetrics * par1 = (QFontMetrics *) _qt5xhb_itemGetPtr(1);
      QRect * par2 = (QRect *) _qt5xhb_itemGetPtr(2);
      QRect * ptr = new QRect( obj->itemTextRect ( *par1, *par2, (int) hb_parni(3), PBOOL(4), PQSTRING(5) ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QRect itemPixmapRect(const QRect &r, int flags, const QPixmap &pixmap) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_ITEMPIXMAPRECT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQRECT(1) && ISNUM(2) && ISQPIXMAP(3) )
    {
      QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
      QPixmap * par3 = (QPixmap *) _qt5xhb_itemGetPtr(3);
      QRect * ptr = new QRect( obj->itemPixmapRect ( *par1, (int) hb_parni(2), *par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QRECT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
SubControl hitTestComplexControl(ComplexControl control, const QStyleOptionComplex *option, const QPoint &pos, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_HITTESTCOMPLEXCONTROL )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPOINT(3) && ISOPTQWIDGET(4) )
    {
      int par1 = hb_parni(1);
      const QStyleOptionComplex * par2 = (const QStyleOptionComplex *) _qt5xhb_itemGetPtr(2);
      QPoint * par3 = (QPoint *) _qt5xhb_itemGetPtr(3);
      const QWidget * par4 = ISNIL(4)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(4);
      hb_retni( obj->hitTestComplexControl (  (QStyle::ComplexControl) par1, par2, *par3, par4 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int styleHint(StyleHint hint, const QStyleOption *option = 0, const QWidget *widget = 0, QStyleHintReturn *returnData = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STYLEHINT )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && ISOPTQWIDGET(3) && (ISQSTYLEHINTRETURN(4)||ISNIL(4)) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
      QStyleHintReturn * par4 = ISNIL(4)? 0 : (QStyleHintReturn *) _qt5xhb_itemGetPtr(4);
      hb_retni( obj->styleHint (  (QStyle::StyleHint) par1, par2, par3, par4 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int pixelMetric(PixelMetric metric, const QStyleOption *option = 0, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_PIXELMETRIC )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && ISOPTQWIDGET(3) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
      hb_retni( obj->pixelMetric (  (QStyle::PixelMetric) par1, par2, par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2,Qt::Orientation orientation, const QStyleOption *option = 0, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_LAYOUTSPACING )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISNUM(2) && ISNUM(3) && (ISQSTYLEOPTION(4)||ISNIL(4)) && ISOPTQWIDGET(5) )
    {
      int par1 = hb_parni(1);
      int par2 = hb_parni(2);
      int par3 = hb_parni(3);
      const QStyleOption * par4 = ISNIL(4)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(4);
      const QWidget * par5 = ISNIL(5)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(5);
      hb_retni( obj->layoutSpacing (  (QSizePolicy::ControlType) par1,  (QSizePolicy::ControlType) par2,  (Qt::Orientation) par3, par4, par5 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QIcon standardIcon(StandardPixmap standardIcon, const QStyleOption *option = 0, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDICON )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && (ISQSTYLEOPTION(2)||ISNIL(2)) && ISOPTQWIDGET(3) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = ISNIL(2)? 0 : (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
      QIcon * ptr = new QIcon( obj->standardIcon (  (QStyle::StandardPixmap) par1, par2, par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap standardPixmap(StandardPixmap standardPixmap, const QStyleOption *opt, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDPIXMAP )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQSTYLEOPTION(2) && ISOPTQWIDGET(3) )
    {
      int par1 = hb_parni(1);
      const QStyleOption * par2 = (const QStyleOption *) _qt5xhb_itemGetPtr(2);
      const QWidget * par3 = ISNIL(3)? 0 : (const QWidget *) _qt5xhb_itemGetPtr(3);
      QPixmap * ptr = new QPixmap( obj->standardPixmap (  (QStyle::StandardPixmap) par1, par2, par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap &pixmap, const QStyleOption *opt) const
*/
HB_FUNC_STATIC( QPROXYSTYLE_GENERATEDICONPIXMAP )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) && ISQPIXMAP(2) && ISQSTYLEOPTION(3) )
    {
      int par1 = hb_parni(1);
      QPixmap * par2 = (QPixmap *) _qt5xhb_itemGetPtr(2);
      const QStyleOption * par3 = (const QStyleOption *) _qt5xhb_itemGetPtr(3);
      QPixmap * ptr = new QPixmap( obj->generatedIconPixmap (  (QIcon::Mode) par1, *par2, par3 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QPalette standardPalette() const
*/
HB_FUNC_STATIC( QPROXYSTYLE_STANDARDPALETTE )
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPalette * ptr = new QPalette( obj->standardPalette (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}

/*
void polish(QWidget *widget)
*/
void QProxyStyle_polish1 ()
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->polish ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void polish(QPalette &pal)
*/
void QProxyStyle_polish2 ()
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QPalette * par1 = (QPalette *) _qt5xhb_itemGetPtr(1);
    obj->polish ( *par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void polish(QApplication *app)
*/
void QProxyStyle_polish3 ()
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QApplication * par1 = (QApplication *) _qt5xhb_itemGetPtr(1);
    obj->polish ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

/*
void unpolish(QWidget *widget)
*/
void QProxyStyle_unpolish1 ()
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->unpolish ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unpolish(QApplication *app)
*/
void QProxyStyle_unpolish2 ()
{
  QProxyStyle * obj = (QProxyStyle *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QApplication * par1 = (QApplication *) _qt5xhb_itemGetPtr(1);
    obj->unpolish ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

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

#pragma ENDDUMP
