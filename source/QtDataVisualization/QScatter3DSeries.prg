/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTERDATAPROXY
#endif

CLASS QScatter3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete
   METHOD dataProxy
   METHOD setDataProxy
   METHOD selectedItem
   METHOD setSelectedItem
   METHOD itemSize
   METHOD setItemSize
   METHOD invalidSelectionIndex

   METHOD onDataProxyChanged
   METHOD onItemSizeChanged
   METHOD onSelectedItemChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScatter3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QScatter3DSeries>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QScatter3DSeries>
#endif

using namespace QtDataVisualization;

/*
explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
*/
void QScatter3DSeries_new1 ()
{
  QScatter3DSeries * o = new QScatter3DSeries ( OPQOBJECT(1,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)
*/
void QScatter3DSeries_new2 ()
{
  QScatter3DSeries * o = new QScatter3DSeries ( PQSCATTERDATAPROXY(1), OPQOBJECT(2,Q_NULLPTR) );
  _qt5xhb_returnNewObject( o, false );
}

/*
explicit QScatter3DSeries(QScatter3DSeriesPrivate *d, QObject *parent = Q_NULLPTR) [protected]
*/

//[1]explicit QScatter3DSeries(QObject *parent = Q_NULLPTR)
//[2]explicit QScatter3DSeries(QScatterDataProxy *dataProxy, QObject *parent = Q_NULLPTR)

HB_FUNC_STATIC( QSCATTER3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QScatter3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQSCATTERDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QScatter3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QScatter3DSeries()
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_DELETE )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

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
QScatterDataProxy *dataProxy() const
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_DATAPROXY )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScatterDataProxy * ptr = obj->dataProxy ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCATTERDATAPROXY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDataProxy(QScatterDataProxy *proxy)
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_SETDATAPROXY )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCATTERDATAPROXY(1) )
    {
#endif
      obj->setDataProxy ( PQSCATTERDATAPROXY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int selectedItem() const
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_SELECTEDITEM )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->selectedItem () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSelectedItem(int index)
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_SETSELECTEDITEM )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setSelectedItem ( PINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
float itemSize() const
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_ITEMSIZE )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->itemSize () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setItemSize(float size)
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_SETITEMSIZE )
{
  QScatter3DSeries * obj = (QScatter3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setItemSize ( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static int invalidSelectionIndex()
*/
HB_FUNC_STATIC( QSCATTER3DSERIES_INVALIDSELECTIONINDEX )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RINT( QScatter3DSeries::invalidSelectionIndex () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QScatter3DSeriesSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSCATTER3DSERIES_ONDATAPROXYCHANGED )
{
  QScatter3DSeriesSlots_connect_signal( "dataProxyChanged(QScatterDataProxy*)", "dataProxyChanged(QScatterDataProxy*)" );
}

HB_FUNC_STATIC( QSCATTER3DSERIES_ONITEMSIZECHANGED )
{
  QScatter3DSeriesSlots_connect_signal( "itemSizeChanged(float)", "itemSizeChanged(float)" );
}

HB_FUNC_STATIC( QSCATTER3DSERIES_ONSELECTEDITEMCHANGED )
{
  QScatter3DSeriesSlots_connect_signal( "selectedItemChanged(int)", "selectedItemChanged(int)" );
}

#pragma ENDDUMP
