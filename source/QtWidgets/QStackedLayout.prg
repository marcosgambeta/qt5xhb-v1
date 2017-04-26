/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStackedLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QStackedLayout>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStackedLayout>
#endif

/*
QStackedLayout ()
*/
void QStackedLayout_new1 ()
{
  QStackedLayout * o = new QStackedLayout (  );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStackedLayout ( QWidget * parent )
*/
void QStackedLayout_new2 ()
{
  QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
  QStackedLayout * o = new QStackedLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QStackedLayout ( QLayout * parentLayout )
*/
void QStackedLayout_new3 ()
{
  QLayout * par1 = (QLayout *) _qt5xhb_itemGetPtr(1);
  QStackedLayout * o = new QStackedLayout ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStackedLayout_new1();
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QStackedLayout_new2();
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    QStackedLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTACKEDLAYOUT_DELETE )
{
  QStackedLayout * obj = (QStackedLayout *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_ADDWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->addWidget ( par1 ) );
  }
}

/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}

/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_INSERTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->insertWidget ( (int) hb_parni(1), par2 ) );
  }
}

/*
void setStackingMode ( StackingMode stackingMode )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETSTACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setStackingMode (  (QStackedLayout::StackingMode) par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
StackingMode stackingMode () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_STACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->stackingMode (  ) );
  }
}

/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_WIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      QWidget * ptr = obj->widget ( (int) hb_parni(1) );
      _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setCurrentIndex ( (int) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentWidget ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
