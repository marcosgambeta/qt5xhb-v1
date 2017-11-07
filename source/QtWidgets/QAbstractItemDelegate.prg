/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSIZE
#endif

CLASS QAbstractItemDelegate INHERIT QObject

   METHOD delete
   METHOD createEditor
   METHOD editorEvent
   METHOD paint
   METHOD setEditorData
   METHOD setModelData
   METHOD sizeHint
   METHOD updateEditorGeometry
   METHOD helpEvent
   METHOD destroyEditor
   METHOD elidedText
   METHOD paintingRoles

   METHOD onCloseEditor
   METHOD onCommitData
   METHOD onSizeHintChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractItemDelegate
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractItemDelegate>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractItemDelegate>
#endif

HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DELETE )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
virtual QWidget * createEditor ( QWidget * parent, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_CREATEEDITOR )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->createEditor ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
virtual bool editorEvent ( QEvent * event, QAbstractItemModel * model, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_EDITOREVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->editorEvent ( PQEVENT(1), PQABSTRACTITEMMODEL(2), *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->paint ( PQPAINTER(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setEditorData ( QWidget * editor, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETEDITORDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setEditorData ( PQWIDGET(1), *PQMODELINDEX(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setModelData ( QWidget * editor, QAbstractItemModel * model, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SETMODELDATA )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->setModelData ( PQWIDGET(1), PQABSTRACTITEMMODEL(2), *PQMODELINDEX(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QSize sizeHint ( const QStyleOptionViewItem & option, const QModelIndex & index ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_SIZEHINT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint ( *PQSTYLEOPTIONVIEWITEM(1), *PQMODELINDEX(2) ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
virtual void updateEditorGeometry ( QWidget * editor, const QStyleOptionViewItem & option, const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_UPDATEEDITORGEOMETRY )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->updateEditorGeometry ( PQWIDGET(1), *PQSTYLEOPTIONVIEWITEM(2), *PQMODELINDEX(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool helpEvent ( QHelpEvent * event, QAbstractItemView * view, const QStyleOptionViewItem & option, const QModelIndex & index )
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_HELPEVENT )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->helpEvent ( PQHELPEVENT(1), PQABSTRACTITEMVIEW(2), *PQSTYLEOPTIONVIEWITEM(3), *PQMODELINDEX(4) ) );
  }
}

/*
virtual void destroyEditor(QWidget *editor, const QModelIndex &index) const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_DESTROYEDITOR )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->destroyEditor ( PQWIDGET(1), *PQMODELINDEX(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QString elidedText(const QFontMetrics &fontMetrics, int width, Qt::TextElideMode mode, const QString &text)
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_ELIDEDTEXT )
{
  RQSTRING( QAbstractItemDelegate::elidedText ( *PQFONTMETRICS(1), PINT(2), (Qt::TextElideMode) hb_parni(3), PQSTRING(4) ) );
}

/*
virtual QVector<int> paintingRoles() const
*/
HB_FUNC_STATIC( QABSTRACTITEMDELEGATE_PAINTINGROLES )
{
  QAbstractItemDelegate * obj = (QAbstractItemDelegate *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QVector<int> list = obj->paintingRoles ();
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
