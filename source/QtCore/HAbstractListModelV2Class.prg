//
// Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QVARIANT
#endif

CLASS HAbstractListModelV2 INHERIT QAbstractListModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setDataCB
   METHOD setHeaderDataCB
   METHOD setFlagsCB
   METHOD setSetDataCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractListModelV2
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HAbstractListModelV2.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

    /*
    HAbstractListModelV2( QObject * parent = NULL )
    */
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    HAbstractListModelV2 *obj = new HAbstractListModelV2(OPQOBJECT(1, NULL));
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual ~HAbstractListModelV2()
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_DELETE)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

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
void setRowCountCB( PHB_ITEM block )
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETROWCOUNTCB)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setRowCountCB(PBLOCKORSYMBOL(1));
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
void setDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETDATACB)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setDataCB(PBLOCKORSYMBOL(1));
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
void setHeaderDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETHEADERDATACB)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setHeaderDataCB(PBLOCKORSYMBOL(1));
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
void setFlagsCB( PHB_ITEM block )
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETFLAGSCB)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setFlagsCB(PBLOCKORSYMBOL(1));
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
void setSetDataCB( PHB_ITEM block )
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_SETSETDATACB)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (HB_ISBLOCK(1) || HB_ISSYMBOL(1)))
    {
#endif
      obj->setSetDataCB(PBLOCKORSYMBOL(1));
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
int rowCount( const QModelIndex &parent = QModelIndex() ) const
*/

/*
int columnCount( const QModelIndex &parent = QModelIndex() ) const
*/

/*
QVariant data( const QModelIndex &index, int role = Qt::DisplayRole ) const
*/

/*
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/

/*
Qt::ItemFlags flags( const QModelIndex &index ) const
*/

/*
bool setData( const QModelIndex &index, const QVariant &value, int role = Qt::EditRole )
*/

/*
void reloadData()
*/
HB_FUNC_STATIC(HABSTRACTLISTMODELV2_RELOADDATA)
{
  HAbstractListModelV2 *obj = qobject_cast<HAbstractListModelV2 *>(Qt5xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->reloadData();
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

#pragma ENDDUMP
