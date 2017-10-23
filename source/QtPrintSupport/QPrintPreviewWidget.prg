/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QPrintPreviewWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD currentPage
   METHOD orientation
   METHOD pageCount
   METHOD viewMode
   METHOD zoomFactor
   METHOD zoomMode
   METHOD setVisible
   METHOD fitInView
   METHOD fitToWidth
   METHOD print
   METHOD setAllPagesViewMode
   METHOD setCurrentPage
   METHOD setFacingPagesViewMode
   METHOD setLandscapeOrientation
   METHOD setOrientation
   METHOD setPortraitOrientation
   METHOD setSinglePageViewMode
   METHOD setViewMode
   METHOD setZoomFactor
   METHOD setZoomMode
   METHOD updatePreview
   METHOD zoomIn
   METHOD zoomOut

   METHOD onPaintRequested
   METHOD onPreviewChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPrintPreviewWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPrintPreviewWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPrintPreviewWidget>
#endif

/*
explicit QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewWidget_new1 ()
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QPrintPreviewWidget * o = new QPrintPreviewWidget ( PQPRINTER(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
void QPrintPreviewWidget_new2 ()
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QPrintPreviewWidget * o = new QPrintPreviewWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

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

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_DELETE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int currentPage () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_CURRENTPAGE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->currentPage () );
  }
}

/*
QPrinter::Orientation orientation () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->orientation () );
  }
}

/*
int pageCount () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PAGECOUNT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RINT( obj->pageCount () );
  }
}

/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_VIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->viewMode () );
  }
}

/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMFACTOR )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RQREAL( obj->zoomFactor () );
  }
}

/*
ZoomMode zoomMode () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->zoomMode () );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVISIBLE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setVisible ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITINVIEW )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fitInView ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitToWidth ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITTOWIDTH )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->fitToWidth ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void print ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PRINT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->print ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAllPagesViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETALLPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setAllPagesViewMode ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentPage ( int page )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETCURRENTPAGE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentPage ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFacingPagesViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETFACINGPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setFacingPagesViewMode ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLandscapeOrientation ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETLANDSCAPEORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setLandscapeOrientation ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( QPrinter::Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setOrientation ( (QPrinter::Orientation) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPortraitOrientation ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETPORTRAITORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setPortraitOrientation ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSinglePageViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETSINGLEPAGEVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setSinglePageViewMode ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setViewMode ( (QPrintPreviewWidget::ViewMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomFactor ( qreal factor )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMFACTOR )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setZoomFactor ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomMode ( ZoomMode zoomMode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setZoomMode ( (QPrintPreviewWidget::ZoomMode) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updatePreview ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_UPDATEPREVIEW )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->updatePreview ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomIn ( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMIN )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISNIL(1)) )
    {
      obj->zoomIn ( (qreal) ISNIL(1)? 1.1 : hb_parnd(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomOut ( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMOUT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISNUM(1)||ISNIL(1)) )
    {
      obj->zoomOut ( (qreal) ISNIL(1)? 1.1 : hb_parnd(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
