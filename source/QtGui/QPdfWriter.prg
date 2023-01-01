/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPAGELAYOUT
#endif

CLASS QPdfWriter INHERIT QObject,QPagedPaintDevice

   METHOD new
   METHOD delete
   METHOD title
   METHOD setTitle
   METHOD creator
   METHOD setCreator
   METHOD newPage
   METHOD setPageSize
   METHOD setPageSizeMM
   METHOD resolution
   METHOD setResolution
   METHOD pageLayout
   METHOD setPageLayout
   METHOD pdfVersion
   METHOD setPageMargins
   METHOD setPageOrientation
   METHOD setPdfVersion

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPdfWriter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QPdfWriter>
#endif

HB_FUNC_STATIC( QPDFWRITER_NEW )
{
  if( ISNUMPAR(1) && HB_ISCHAR(1) )
  {
    /*
    QPdfWriter( const QString & filename )
    */
    QPdfWriter * obj = new QPdfWriter( PQSTRING(1) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    /*
    QPdfWriter( QIODevice * device )
    */
    QPdfWriter * obj = new QPdfWriter( PQIODEVICE(1) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QPDFWRITER_DELETE )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(self, "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString title() const
*/
HB_FUNC_STATIC( QPDFWRITER_TITLE )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setTitle( const QString & title )
*/
HB_FUNC_STATIC( QPDFWRITER_SETTITLE )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setTitle( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QString creator() const
*/
HB_FUNC_STATIC( QPDFWRITER_CREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->creator() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setCreator( const QString & creator )
*/
HB_FUNC_STATIC( QPDFWRITER_SETCREATOR )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      obj->setCreator( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool newPage()
*/
HB_FUNC_STATIC( QPDFWRITER_NEWPAGE )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->newPage() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZE )
{
  if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    void setPageSize( QPagedPaintDevice::PageSize size )
    */
    QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      obj->setPageSize( (QPagedPaintDevice::PageSize) hb_parni(1) );
    }
  
    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQPAGESIZE(1) )
  {
    /*
    bool setPageSize( const QPageSize & pageSize )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RBOOL( obj->setPageSize( *PQPAGESIZE(1) ) );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
void setPageSizeMM( const QSizeF & size )
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGESIZEMM )
{
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSIZEF(1) )
    {
#endif
      obj->setPageSizeMM( *PQSIZEF(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int resolution() const
*/
HB_FUNC_STATIC( QPDFWRITER_RESOLUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->resolution() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setResolution( int resolution )
*/
HB_FUNC_STATIC( QPDFWRITER_SETRESOLUTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setResolution( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

/*
QPageLayout pageLayout() const
*/
HB_FUNC_STATIC( QPDFWRITER_PAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPageLayout * ptr = new QPageLayout( obj->pageLayout() );
      Qt5xHb::createReturnClass(ptr, "QPAGELAYOUT", true);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
bool setPageLayout( const QPageLayout & newPageLayout )
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGELAYOUT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPAGELAYOUT(1) )
    {
#endif
      RBOOL( obj->setPageLayout( *PQPAGELAYOUT(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
QPagedPaintDevice::PdfVersion pdfVersion() const
*/
HB_FUNC_STATIC( QPDFWRITER_PDFVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->pdfVersion() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

HB_FUNC_STATIC( QPDFWRITER_SETPAGEMARGINS )
{
  if( ISNUMPAR(1) && ISQMARGINSF(1) )
  {
    /*
    bool setPageMargins( const QMarginsF & margins )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RBOOL( obj->setPageMargins( *PQMARGINSF(1) ) );
    }
#endif
  }
  else if( ISNUMPAR(2) && ISQMARGINSF(1) && HB_ISNUM(2) )
  {
    /*
    bool setPageMargins( const QMarginsF & margins, QPageLayout::Unit units )
    */
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
    QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();
  
    if( obj )
    {
      RBOOL( obj->setPageMargins( *PQMARGINSF(1), (QPageLayout::Unit) hb_parni(2) ) );
    }
#endif
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
bool setPageOrientation( QPageLayout::Orientation orientation )
*/
HB_FUNC_STATIC( QPDFWRITER_SETPAGEORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RBOOL( obj->setPageOrientation( (QPageLayout::Orientation) hb_parni(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
#endif
}

/*
void setPdfVersion( QPagedPaintDevice::PdfVersion version )
*/
HB_FUNC_STATIC( QPDFWRITER_SETPDFVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,10,0))
  QPdfWriter * obj = (QPdfWriter *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setPdfVersion( (QPagedPaintDevice::PdfVersion) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
#endif
}

#pragma ENDDUMP
