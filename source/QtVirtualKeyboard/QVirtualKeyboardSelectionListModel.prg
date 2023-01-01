/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QVIRTUALKEYBOARDABSTRACTINPUTMETHOD
#endif

CLASS QVirtualKeyboardSelectionListModel INHERIT QAbstractListModel

   METHOD new
   METHOD delete
   METHOD count
   METHOD dataSource
   METHOD rowCount
   METHOD data
   METHOD selectItem
   METHOD removeItem

   METHOD onCountChanged
   METHOD onActiveItemChanged
   METHOD onItemSelected

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QVirtualKeyboardSelectionListModel
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardSelectionListModel>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtVirtualKeyboard/QVirtualKeyboardSelectionListModel>
#endif

/*
QVirtualKeyboardSelectionListModel( QObject * parent = nullptr )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||HB_ISNIL(1)) )
  {
    QVirtualKeyboardSelectionListModel * obj = new QVirtualKeyboardSelectionListModel( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
~QVirtualKeyboardSelectionListModel()
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_DELETE )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

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
int count() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_COUNT )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
QVirtualKeyboardAbstractInputMethod * dataSource() const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_DATASOURCE )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVirtualKeyboardAbstractInputMethod * ptr = obj->dataSource();
      Qt5xHb::createReturnQObjectClass( ptr, "QVIRTUALKEYBOARDABSTRACTINPUTMETHOD" );
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
int rowCount( const QModelIndex & parent = QModelIndex() ) const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_ROWCOUNT )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQMODELINDEX(1)||HB_ISNIL(1)) )
    {
#endif
      RINT( obj->rowCount( HB_ISNIL(1)? QModelIndex() : *(QModelIndex *) Qt5xHb::itemGetPtr(1) ) );
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
QVariant data( const QModelIndex & index, int role = Qt::DisplayRole ) const
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_DATA )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQMODELINDEX(1) && (HB_ISNUM(2)||HB_ISNIL(2)) )
    {
#endif
      QVariant * ptr = new QVariant( obj->data( *PQMODELINDEX(1), OPINT(2,Qt::DisplayRole) ) );
      Qt5xHb::createReturnClass(ptr, "QVARIANT", true);
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
Q_INVOKABLE void selectItem( int index )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_SELECTITEM )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->selectItem( PINT(1) );
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
Q_INVOKABLE void removeItem( int index )
*/
HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_REMOVEITEM )
{
  QVirtualKeyboardSelectionListModel * obj = (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->removeItem( PINT(1) );
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

void QVirtualKeyboardSelectionListModelSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_ONCOUNTCHANGED )
{
  QVirtualKeyboardSelectionListModelSlots_connect_signal( "countChanged()", "countChanged()" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_ONACTIVEITEMCHANGED )
{
  QVirtualKeyboardSelectionListModelSlots_connect_signal( "activeItemChanged(int)", "activeItemChanged(int)" );
}

HB_FUNC_STATIC( QVIRTUALKEYBOARDSELECTIONLISTMODEL_ONITEMSELECTED )
{
  QVirtualKeyboardSelectionListModelSlots_connect_signal( "itemSelected(int)", "itemSelected(int)" );
}

#pragma ENDDUMP
