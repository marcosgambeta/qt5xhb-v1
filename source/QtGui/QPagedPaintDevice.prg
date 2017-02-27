/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZEF
REQUEST QPAGELAYOUT
#endif

CLASS QPagedPaintDevice INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QPagedPaintDevice
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD newPage
   METHOD pageSize
   METHOD setPageSize
   METHOD pageSizeMM
   METHOD setPageSizeMM
   METHOD pageLayout
   METHOD setPageLayout
   METHOD setPageOrientation
   METHOD setPageMargins1
   METHOD setPageMargins2
   METHOD setPageMargins
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPagedPaintDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPagedPaintDevice>
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
#include <QPagedPaintDevice>
#endif
#endif


HB_FUNC_STATIC( QPAGEDPAINTDEVICE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QPagedPaintDevice * obj = (QPagedPaintDevice *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool newPage() = 0
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_NEWPAGE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->newPage (  ) );
  }
}


/*
PageSize pageSize() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->pageSize (  ) );
  }
}

/*
virtual void setPageSize(PageSize size)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZE )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPageSize (  (QPagedPaintDevice::PageSize) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSizeF pageSizeMM() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGESIZEMM )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->pageSizeMM (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
virtual void setPageSizeMM(const QSizeF & size)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGESIZEMM )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSizeF * par1 = (QSizeF *) _qtxhb_itemGetPtr(1);
    obj->setPageSizeMM ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_PAGELAYOUT )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageLayout * ptr = new QPageLayout( obj->pageLayout (  ) );
    _qt5xhb_createReturnClass ( ptr, "QPAGELAYOUT", true );
  }
}

/*
bool setPageLayout(const QPageLayout &pageLayout)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGELAYOUT )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPageLayout * par1 = (QPageLayout *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setPageLayout ( *par1 ) );
  }
}


/*
bool setPageOrientation(QPageLayout::Orientation orientation)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEORIENTATION )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->setPageOrientation (  (QPageLayout::Orientation) par1 ) );
  }
}


/*
bool setPageMargins(const QMarginsF &margins)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS1 )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * par1 = (QMarginsF *) _qtxhb_itemGetPtr(1);
    hb_retl( obj->setPageMargins ( *par1 ) );
  }
}

/*
bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)
*/
HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS2 )
{
  QPagedPaintDevice * obj = (QPagedPaintDevice *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMarginsF * par1 = (QMarginsF *) _qtxhb_itemGetPtr(1);
    int par2 = hb_parni(2);
    hb_retl( obj->setPageMargins ( *par1,  (QPageLayout::Unit) par2 ) );
  }
}


//[1]bool setPageMargins(const QMarginsF &margins)
//[2]bool setPageMargins(const QMarginsF &margins, QPageLayout::Unit units)

HB_FUNC_STATIC( QPAGEDPAINTDEVICE_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    HB_FUNC_EXEC( QPAGEDPAINTDEVICE_SETPAGEMARGINS1 );
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPAGEDPAINTDEVICE_SETPAGEMARGINS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}


#pragma ENDDUMP
