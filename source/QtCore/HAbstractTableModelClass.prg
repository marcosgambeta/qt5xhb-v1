/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS HAbstractTableModel INHERIT QAbstractTableModel

   METHOD new
   METHOD delete

   METHOD setRowCountCB
   METHOD setColumnCountCB

   METHOD setDisplayRoleCB
   METHOD setDecorationRoleCB
   METHOD setEditRoleCB
   METHOD setToolTipRoleCB
   METHOD setStatusTipRoleCB
   METHOD setWhatsThisRoleCB
   METHOD setSizeHintRoleCB
   METHOD setFontRoleCB
   METHOD setTextAlignmentRoleCB
   METHOD setBackgroundRoleCB
   METHOD setForegroundRoleCB

   METHOD setHorizontalHeaderDisplayRoleCB
   METHOD setHorizontalHeaderDecorationRoleCB
   METHOD setHorizontalHeaderFontRoleCB
   METHOD setHorizontalHeaderTextAlignmentRoleCB
   METHOD setHorizontalHeaderBackgroundRoleCB
   METHOD setHorizontalHeaderForegroundRoleCB

   METHOD setVerticalHeaderDisplayRoleCB
   METHOD setVerticalHeaderDecorationRoleCB
   METHOD setVerticalHeaderFontRoleCB
   METHOD setVerticalHeaderTextAlignmentRoleCB
   METHOD setVerticalHeaderBackgroundRoleCB
   METHOD setVerticalHeaderForegroundRoleCB

   METHOD reloadData

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HAbstractTableModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

CLASS HDBFTableModel INHERIT HAbstractTableModel
END CLASS

CLASS HArrayTableModel INHERIT HAbstractTableModel
END CLASS

#pragma BEGINDUMP

#include "HAbstractTableModel.hpp"

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

/*
HAbstractTableModel( QObject * parent = 0 )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_NEW )
{
  HAbstractTableModel * o = new HAbstractTableModel( OPQOBJECT(1,0) );
  Qt5xHb::returnNewObject( o, false );
}

/*
virtual ~HAbstractTableModel()
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_DELETE )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
    Qt5xHb::Events_disconnect_all_events(obj, true);
    Qt5xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

// linhas e colunas

/*
void setRowCountCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETROWCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setRowCountCB( PBLOCKORSYMBOL(1) );
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
void setColumnCountCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETCOLUMNCOUNTCB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setColumnCountCB( PBLOCKORSYMBOL(1) );
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

// células

/*
void setDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setDisplayRoleCB( PBLOCKORSYMBOL(1) );
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
void setDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setDecorationRoleCB( PBLOCKORSYMBOL(1) );
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
void setEditRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETEDITROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setEditRoleCB( PBLOCKORSYMBOL(1) );
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
void setToolTipRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTOOLTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setToolTipRoleCB( PBLOCKORSYMBOL(1) );
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
void setStatusTipRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSTATUSTIPROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setStatusTipRoleCB( PBLOCKORSYMBOL(1) );
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
void setWhatsThisRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETWHATSTHISROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setWhatsThisRoleCB( PBLOCKORSYMBOL(1) );
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
void setSizeHintRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETSIZEHINTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setSizeHintRoleCB( PBLOCKORSYMBOL(1) );
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
void setFontRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setFontRoleCB( PBLOCKORSYMBOL(1) );
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
void setTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setTextAlignmentRoleCB( PBLOCKORSYMBOL(1) );
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
void setBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setBackgroundRoleCB( PBLOCKORSYMBOL(1) );
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
void setForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setForegroundRoleCB( PBLOCKORSYMBOL(1) );
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

// cabeçalho horizontal

/*
void setHorizontalHeaderDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderDisplayRoleCB( PBLOCKORSYMBOL(1) );
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
void setHorizontalHeaderDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderDecorationRoleCB( PBLOCKORSYMBOL(1) );
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
void setHorizontalHeaderFontRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderFontRoleCB( PBLOCKORSYMBOL(1) );
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
void setHorizontalHeaderTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderTextAlignmentRoleCB( PBLOCKORSYMBOL(1) );
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
void setHorizontalHeaderBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderBackgroundRoleCB( PBLOCKORSYMBOL(1) );
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
void setHorizontalHeaderForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETHORIZONTALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setHorizontalHeaderForegroundRoleCB( PBLOCKORSYMBOL(1) );
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

// cabeçalho vertical

/*
void setVerticalHeaderDisplayRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDISPLAYROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderDisplayRoleCB( PBLOCKORSYMBOL(1) );
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
void setVerticalHeaderDecorationRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERDECORATIONROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderDecorationRoleCB( PBLOCKORSYMBOL(1) );
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
void setVerticalHeaderFontRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFONTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderFontRoleCB( PBLOCKORSYMBOL(1) );
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
void setVerticalHeaderTextAlignmentRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERTEXTALIGNMENTROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderTextAlignmentRoleCB( PBLOCKORSYMBOL(1) );
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
void setVerticalHeaderBackgroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERBACKGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderBackgroundRoleCB( PBLOCKORSYMBOL(1) );
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
void setVerticalHeaderForegroundRoleCB( PHB_ITEM block )
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_SETVERTICALHEADERFOREGROUNDROLECB )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) )
    {
#endif
      obj->setVerticalHeaderForegroundRoleCB( PBLOCKORSYMBOL(1) );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/

/*
QVariant headerData( int section, Qt::Orientation orientation, int role = Qt::DisplayRole ) const
*/

/*
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
int columnCount( const QModelIndex & parent = QModelIndex() ) const
*/

/*
void reloadData()
*/
HB_FUNC_STATIC( HABSTRACTTABLEMODEL_RELOADDATA )
{
  HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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

// /*
// QModelIndex createIndex ( int row, int column )
// */
// HB_FUNC_STATIC( HABSTRACTTABLEMODEL_CREATEINDEX )
// {
//   HAbstractTableModel * obj = (HAbstractTableModel *) Qt5xHb::itemGetPtrStackSelfItem();
//   if( obj != NULL )
//   {
//     QModelIndex * ptr = new QModelIndex( obj->createIndex ( hb_parni(1), hb_parni(2) ) );
//     _qt5xhb_createReturnClass ( ptr, "QMODELINDEX" );  }
// }

#pragma ENDDUMP
