/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QVCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new
   METHOD timestampRow
   METHOD setTimestampRow
   METHOD openRow
   METHOD setOpenRow
   METHOD highRow
   METHOD setHighRow
   METHOD lowRow
   METHOD setLowRow
   METHOD closeRow
   METHOD setCloseRow
   METHOD firstSetColumn
   METHOD setFirstSetColumn
   METHOD lastSetColumn
   METHOD setLastSetColumn
   METHOD orientation

   METHOD onCloseRowChanged
   METHOD onFirstSetColumnChanged
   METHOD onHighRowChanged
   METHOD onLastSetColumnChanged
   METHOD onLowRowChanged
   METHOD onOpenRowChanged
   METHOD onTimestampRowChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QVCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtCharts/QVCandlestickModelMapper>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
QVCandlestickModelMapper( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QVCandlestickModelMapper * obj = new QVCandlestickModelMapper( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
int timestampRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_TIMESTAMPROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timestampRow() );
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
void setTimestampRow( int timestampRow )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETTIMESTAMPROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTimestampRow( PINT(1) );
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
int openRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_OPENROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->openRow() );
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
void setOpenRow( int openRow )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETOPENROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setOpenRow( PINT(1) );
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
int highRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_HIGHROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->highRow() );
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
void setHighRow( int highRow )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETHIGHROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHighRow( PINT(1) );
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
int lowRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_LOWROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lowRow() );
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
void setLowRow( int lowRow )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETLOWROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLowRow( PINT(1) );
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
int closeRow() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_CLOSEROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->closeRow() );
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
void setCloseRow( int closeRow )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETCLOSEROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setCloseRow( PINT(1) );
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
int firstSetColumn() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_FIRSTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstSetColumn() );
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
void setFirstSetColumn( int firstSetColumn )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETFIRSTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFirstSetColumn( PINT(1) );
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
int lastSetColumn() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_LASTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastSetColumn() );
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
void setLastSetColumn( int lastSetColumn )
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_SETLASTSETCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLastSetColumn( PINT(1) );
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapper * obj = (QVCandlestickModelMapper *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation() );
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

void QVCandlestickModelMapperSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONCLOSEROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "closeRowChanged()", "closeRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONFIRSTSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "firstSetColumnChanged()", "firstSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONHIGHROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "highRowChanged()", "highRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONLASTSETCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "lastSetColumnChanged()", "lastSetColumnChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONLOWROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "lowRowChanged()", "lowRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONOPENROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "openRowChanged()", "openRowChanged()" );
#else
  hb_retl( false );
#endif
}

HB_FUNC_STATIC( QVCANDLESTICKMODELMAPPER_ONTIMESTAMPROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QVCandlestickModelMapperSlots_connect_signal( "timestampRowChanged()", "timestampRowChanged()" );
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
