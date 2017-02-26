/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QStackedLayout
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStackedLayout>
#endif
#endif

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"

#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStackedLayout>
#endif
#endif

/*
QStackedLayout ()
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStackedLayout * o = new QStackedLayout (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QStackedLayout ( QWidget * parent )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
  QStackedLayout * o = new QStackedLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}

/*
QStackedLayout ( QLayout * parentLayout )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QLayout * par1 = (QLayout *) _qtxhb_itemGetPtr(1);
  QStackedLayout * o = new QStackedLayout ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedLayout *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


//[1]QStackedLayout ()
//[2]QStackedLayout ( QWidget * parent )
//[3]QStackedLayout ( QLayout * parentLayout )

HB_FUNC_STATIC( QSTACKEDLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQLAYOUT(1) )
  {
    HB_FUNC_EXEC( QSTACKEDLAYOUT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTACKEDLAYOUT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
int addWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_ADDWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    hb_retni( obj->addWidget ( par1 ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_CURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
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
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_INSERTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->insertWidget ( (int) hb_parni(1), par2 ) );
  }
}


/*
void setStackingMode ( StackingMode stackingMode )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETSTACKINGMODE )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
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
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
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
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ( (int) hb_parni(1) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTINDEX )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDLAYOUT_SETCURRENTWIDGET )
{
  QStackedLayout * obj = (QStackedLayout *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP
