/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedWidget INHERIT QFrame

   DATA class_id INIT Class_Id_QStackedWidget
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD currentWidget
   METHOD indexOf
   METHOD insertWidget
   METHOD removeWidget
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget
   METHOD onCurrentChanged
   METHOD onWidgetRemoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStackedWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStackedWidget>
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
#include <QStackedWidget>
#endif
#endif

/*
QStackedWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QStackedWidget * o = new QStackedWidget ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStackedWidget *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSTACKEDWIDGET_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStackedWidget * obj = (QStackedWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QSTACKEDWIDGET_ADDWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->addWidget ( par1 ) );
  }
}


/*
int count () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_COUNT )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->count (  ) );
  }
}


/*
int currentIndex () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_CURRENTINDEX )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->currentIndex (  ) );
  }
}


/*
QWidget * currentWidget () const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_CURRENTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->currentWidget (  );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
int indexOf ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_INDEXOF )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    hb_retni( obj->indexOf ( par1 ) );
  }
}


/*
int insertWidget ( int index, QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_INSERTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->insertWidget ( (int) hb_parni(1), par2 ) );
  }
}


/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_REMOVEWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->removeWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * widget ( int index ) const
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_WIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->widget ( (int) hb_parni(1) );
    _qt5xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void setCurrentIndex ( int index )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_SETCURRENTINDEX )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCurrentIndex ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTACKEDWIDGET_SETCURRENTWIDGET )
{
  QStackedWidget * obj = (QStackedWidget *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setCurrentWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
