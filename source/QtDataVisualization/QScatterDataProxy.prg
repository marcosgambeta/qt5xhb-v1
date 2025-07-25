//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include <hbclass.ch>

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSCATTER3DSERIES
REQUEST QSCATTERDATAITEM
#endif

CLASS QScatterDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD itemCount
   METHOD series
   METHOD itemAt
   METHOD setItem
   METHOD addItem
   METHOD insertItem
   METHOD removeItems

   METHOD onArrayReset
   METHOD onItemCountChanged
   METHOD onItemsAdded
   METHOD onItemsChanged
   METHOD onItemsInserted
   METHOD onItemsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QScatterDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtDataVisualization/QScatterDataProxy>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtDataVisualization/QScatterDataProxy>
#endif

#include <QtDataVisualization/QScatter3DSeries>

    using namespace QtDataVisualization;

/*
QScatterDataProxy( QObject * parent = nullptr )
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QScatterDataProxy *obj = new QScatterDataProxy(OPQOBJECT(1, nullptr));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~QScatterDataProxy()
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_DELETE)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int itemCount() const
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_ITEMCOUNT)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->itemCount());
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
QScatter3DSeries * series() const
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_SERIES)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QScatter3DSeries *ptr = obj->series();
      Qt5xHb::createReturnQObjectClass(ptr, "QSCATTER3DSERIES");
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
const QScatterDataItem * itemAt( int index ) const
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_ITEMAT)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      const QScatterDataItem *ptr = obj->itemAt(PINT(1));
      Qt5xHb::createReturnClass(ptr, "QSCATTERDATAITEM", false);
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
void setItem( int index, const QScatterDataItem &item )
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_SETITEM)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSCATTERDATAITEM(2))
    {
#endif
      obj->setItem(PINT(1), *PQSCATTERDATAITEM(2));
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
int addItem( const QScatterDataItem &item )
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_ADDITEM)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSCATTERDATAITEM(1))
    {
#endif
      RINT(obj->addItem(*PQSCATTERDATAITEM(1)));
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
void insertItem( int index, const QScatterDataItem &item )
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_INSERTITEM)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQSCATTERDATAITEM(2))
    {
#endif
      obj->insertItem(PINT(1), *PQSCATTERDATAITEM(2));
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
void removeItems( int index, int removeCount )
*/
HB_FUNC_STATIC(QSCATTERDATAPROXY_REMOVEITEMS)
{
  QScatterDataProxy *obj = (QScatterDataProxy *)Qt5xHb::itemGetPtrStackSelfItem();

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->removeItems(PINT(1), PINT(2));
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

void QScatterDataProxySlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONARRAYRESET)
{
  QScatterDataProxySlots_connect_signal("arrayReset();", "arrayReset();");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONITEMCOUNTCHANGED)
{
  QScatterDataProxySlots_connect_signal("itemCountChanged(int)", "itemCountChanged(int)");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONITEMSADDED)
{
  QScatterDataProxySlots_connect_signal("itemsAdded(int,int)", "itemsAdded(int,int)");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONITEMSCHANGED)
{
  QScatterDataProxySlots_connect_signal("itemsChanged(int,int)", "itemsChanged(int,int)");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONITEMSINSERTED)
{
  QScatterDataProxySlots_connect_signal("itemsInserted(int,int)", "itemsInserted(int,int)");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONITEMSREMOVED)
{
  QScatterDataProxySlots_connect_signal("itemsRemoved(int,int)", "itemsRemoved(int,int)");
}

HB_FUNC_STATIC(QSCATTERDATAPROXY_ONSERIESCHANGED)
{
  QScatterDataProxySlots_connect_signal("seriesChanged(QScatter3DSeries*)", "seriesChanged(QScatter3DSeries*)");
}

#pragma ENDDUMP
