/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLAYOUTITEM
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QFormLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addRow
   METHOD fieldGrowthPolicy
   METHOD formAlignment
   METHOD horizontalSpacing
   METHOD insertRow
   METHOD itemAt
   METHOD labelAlignment
   METHOD labelForField
   METHOD rowCount
   METHOD rowWrapPolicy
   METHOD setFieldGrowthPolicy
   METHOD setFormAlignment
   METHOD setHorizontalSpacing
   METHOD setItem
   METHOD setLabelAlignment
   METHOD setLayout
   METHOD setRowWrapPolicy
   METHOD setSpacing
   METHOD setVerticalSpacing
   METHOD setWidget
   METHOD spacing
   METHOD verticalSpacing
   METHOD addItem
   METHOD count
   METHOD expandingDirections
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD invalidate
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD takeAt

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFormLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QFormLayout>
#endif

#include "qt5xhb_common.hpp"
#include "qt5xhb_macros.hpp"
#include "qt5xhb_utils.hpp"
#include "qt5xhb_events.hpp"
#include "qt5xhb_signals.hpp"

#ifdef __XHARBOUR__
#include <QtWidgets/QFormLayout>
#endif

/*
QFormLayout( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QFORMLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||HB_ISNIL(1)) )
  {
    QFormLayout * obj = new QFormLayout( OPQWIDGET(1,0) );
    Qt5xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFORMLAYOUT_DELETE )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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

HB_FUNC_STATIC( QFORMLAYOUT_ADDROW )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISQWIDGET(2) )
  {
    /*
    void addRow( QWidget * label, QWidget * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQWIDGET(1), PQWIDGET(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISQLAYOUT(2) )
  {
    /*
    void addRow( QWidget * label, QLayout * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQWIDGET(1), PQLAYOUT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQWIDGET(2) )
  {
    /*
    void addRow( const QString & labelText, QWidget * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQSTRING(1), PQWIDGET(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && ISQLAYOUT(2) )
  {
    /*
    void addRow( const QString & labelText, QLayout * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQSTRING(1), PQLAYOUT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    void addRow( QWidget * widget )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQWIDGET(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    /*
    void addRow( QLayout * layout )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->addRow( PQLAYOUT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QFormLayout::FieldGrowthPolicy fieldGrowthPolicy() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->fieldGrowthPolicy() );
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
Qt::Alignment formAlignment() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_FORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->formAlignment() );
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
int horizontalSpacing() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->horizontalSpacing() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFORMLAYOUT_INSERTROW )
{
  if( ISNUMPAR(3) && HB_ISNUM(1) && ISQWIDGET(2) && ISQWIDGET(3) )
  {
    /*
    void insertRow( int row, QWidget * label, QWidget * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQWIDGET(2), PQWIDGET(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && ISQWIDGET(2) && ISQLAYOUT(3) )
  {
    /*
    void insertRow( int row, QWidget * label, QLayout * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQWIDGET(2), PQLAYOUT(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && ISQWIDGET(3) )
  {
    /*
    void insertRow( int row, const QString & labelText, QWidget * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQSTRING(2), PQWIDGET(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISCHAR(2) && ISQLAYOUT(3) )
  {
    /*
    void insertRow( int row, const QString & labelText, QLayout * field )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQSTRING(2), PQLAYOUT(3) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(2) && HB_ISNUM(1) && ISQWIDGET(2) )
  {
    /*
    void insertRow( int row, QWidget * widget )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQWIDGET(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(3) && HB_ISNUM(1) && ISQLAYOUT(2) )
  {
    /*
    void insertRow( int row, QLayout * layout )
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      obj->insertRow( PINT(1), PQLAYOUT(2) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QFORMLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
  {
    /*
    QLayoutItem * itemAt( int row, QFormLayout::ItemRole role ) const
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QLayoutItem * ptr = obj->itemAt( PINT(1), (QFormLayout::ItemRole) hb_parni(2) );
      Qt5xHb::createReturnClass(ptr, "QLAYOUTITEM", false);
    }
  }
  else if( ISNUMPAR(1) && HB_ISNUM(1) )
  {
    /*
    virtual QLayoutItem * itemAt( int index ) const
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QLayoutItem * ptr = obj->itemAt( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QLAYOUTITEM", false);
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
Qt::Alignment labelAlignment() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_LABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->labelAlignment() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QFORMLAYOUT_LABELFORFIELD )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    /*
    QWidget * labelForField( QWidget * field ) const
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QWidget * ptr = obj->labelForField( PQWIDGET(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
    }
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    /*
    QWidget * labelForField( QLayout * field ) const
    */
    QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

    if( obj != NULL )
    {
      QWidget * ptr = obj->labelForField( PQLAYOUT(1) );
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET");
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
int rowCount() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWCOUNT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
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
QFormLayout::RowWrapPolicy rowWrapPolicy() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_ROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->rowWrapPolicy() );
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
void setFieldGrowthPolicy( QFormLayout::FieldGrowthPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFIELDGROWTHPOLICY )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFieldGrowthPolicy( (QFormLayout::FieldGrowthPolicy) hb_parni(1) );
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
void setFormAlignment( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETFORMALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setFormAlignment( (Qt::Alignment) hb_parni(1) );
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
void setHorizontalSpacing( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETHORIZONTALSPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setHorizontalSpacing( PINT(1) );
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
void setItem( int row, QFormLayout::ItemRole role, QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETITEM )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQLAYOUTITEM(3) )
    {
#endif
      obj->setItem( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQLAYOUTITEM(3) );
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
void setLabelAlignment( Qt::Alignment alignment )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLABELALIGNMENT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setLabelAlignment( (Qt::Alignment) hb_parni(1) );
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
void setLayout( int row, QFormLayout::ItemRole role, QLayout * layout )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETLAYOUT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQLAYOUT(3) )
    {
#endif
      obj->setLayout( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQLAYOUT(3) );
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
void setRowWrapPolicy( QFormLayout::RowWrapPolicy policy )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETROWWRAPPOLICY )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setRowWrapPolicy( (QFormLayout::RowWrapPolicy) hb_parni(1) );
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
void setSpacing( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETSPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setSpacing( PINT(1) );
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
void setVerticalSpacing( int spacing )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETVERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setVerticalSpacing( PINT(1) );
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
void setWidget( int row, QFormLayout::ItemRole role, QWidget * widget )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETWIDGET )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQWIDGET(3) )
    {
#endif
      obj->setWidget( PINT(1), (QFormLayout::ItemRole) hb_parni(2), PQWIDGET(3) );
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
int spacing() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->spacing() );
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
int verticalSpacing() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_VERTICALSPACING )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->verticalSpacing() );
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
virtual void addItem( QLayoutItem * item )
*/
HB_FUNC_STATIC( QFORMLAYOUT_ADDITEM )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQLAYOUTITEM(1) )
    {
#endif
      obj->addItem( PQLAYOUTITEM(1) );
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
virtual int count() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_COUNT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
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
virtual Qt::Orientations expandingDirections() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_EXPANDINGDIRECTIONS )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->expandingDirections() );
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
virtual bool hasHeightForWidth() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HASHEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasHeightForWidth() );
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
virtual int heightForWidth( int width ) const
*/
HB_FUNC_STATIC( QFORMLAYOUT_HEIGHTFORWIDTH )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      RINT( obj->heightForWidth( PINT(1) ) );
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
virtual void invalidate()
*/
HB_FUNC_STATIC( QFORMLAYOUT_INVALIDATE )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->invalidate();
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
virtual QSize minimumSize() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_MINIMUMSIZE )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->minimumSize() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
virtual void setGeometry( const QRect & rect )
*/
HB_FUNC_STATIC( QFORMLAYOUT_SETGEOMETRY )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRECT(1) )
    {
#endif
      obj->setGeometry( *PQRECT(1) );
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC( QFORMLAYOUT_SIZEHINT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSize * ptr = new QSize( obj->sizeHint() );
      Qt5xHb::createReturnClass(ptr, "QSIZE", true);
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
virtual QLayoutItem * takeAt( int index )
*/
HB_FUNC_STATIC( QFORMLAYOUT_TAKEAT )
{
  QFormLayout * obj = (QFormLayout *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != NULL )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      QLayoutItem * ptr = obj->takeAt( PINT(1) );
      Qt5xHb::createReturnClass(ptr, "QLAYOUTITEM", false);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
