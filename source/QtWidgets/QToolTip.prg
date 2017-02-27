/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QFONT
REQUEST QPALETTE
#endif

CLASS QToolTip

   DATA pointer
   DATA class_id INIT Class_Id_QToolTip
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD font
   METHOD hideText
   METHOD isVisible
   METHOD palette
   METHOD setFont
   METHOD setPalette
   METHOD showText1
   METHOD showText2
   METHOD showText
   METHOD text
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QToolTip
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QToolTip>
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
#include <QToolTip>
#endif
#endif

HB_FUNC_STATIC( QTOOLTIP_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QToolTip * obj = (QToolTip *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QFont font()
*/
HB_FUNC_STATIC( QTOOLTIP_FONT )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font (  ) );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}


/*
void hideText()
*/
HB_FUNC_STATIC( QTOOLTIP_HIDETEXT )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hideText (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isVisible()
*/
HB_FUNC_STATIC( QTOOLTIP_ISVISIBLE )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
QPalette palette()
*/
HB_FUNC_STATIC( QTOOLTIP_PALETTE )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * ptr = new QPalette( obj->palette (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPALETTE", true );
  }
}


/*
void setFont(const QFont & font)
*/
HB_FUNC_STATIC( QTOOLTIP_SETFONT )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * par1 = (QFont *) _qtxhb_itemGetPtr(1);
    obj->setFont ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPalette(const QPalette & palette)
*/
HB_FUNC_STATIC( QTOOLTIP_SETPALETTE )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPalette * par1 = (QPalette *) _qtxhb_itemGetPtr(1);
    obj->setPalette ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
*/
HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT1 )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QWidget * par3 = (QWidget *) _qtxhb_itemGetPtr(3);
    QRect * par4 = (QRect *) _qtxhb_itemGetPtr(4);
    obj->showText ( *par1, par2, par3, *par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showText(const QPoint & pos, const QString & text, QWidget * w = 0)
*/
HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT2 )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPoint * par1 = (QPoint *) _qtxhb_itemGetPtr(1);
    QString par2 = QLatin1String( hb_parc(2) );
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qtxhb_itemGetPtr(3);
    obj->showText ( *par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void showText(const QPoint & pos, const QString & text, QWidget * w, const QRect & rect)
//[2]void showText(const QPoint & pos, const QString & text, QWidget * w = 0)

HB_FUNC_STATIC( QTOOLTIP_SHOWTEXT )
{
  if( ISNUMPAR(4) && ISQPOINT(1) && ISCHAR(2) && ISQWIDGET(3) && ISQRECT(4) )
  {
    HB_FUNC_EXEC( QTOOLTIP_SHOWTEXT1 );
  }
  else if( ISBETWEEN(2,3) && ISQPOINT(1) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTOOLTIP_SHOWTEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString text()
*/
HB_FUNC_STATIC( QTOOLTIP_TEXT )
{
  QToolTip * obj = (QToolTip *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}



HB_FUNC_STATIC( QTOOLTIP_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTOOLTIP_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTOOLTIP_NEWFROM );
}

HB_FUNC_STATIC( QTOOLTIP_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTOOLTIP_NEWFROM );
}

HB_FUNC_STATIC( QTOOLTIP_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTOOLTIP_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
