/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QWidgetAction INHERIT QAction

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD defaultWidget
   METHOD releaseWidget
   METHOD requestWidget
   METHOD setDefaultWidget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidgetAction
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWidgetAction>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWidgetAction>
#endif

/*
QWidgetAction(QObject * parent)
*/
HB_FUNC_STATIC( QWIDGETACTION_NEW )
{
  QObject * par1 = (QObject *) _qt5xhb_itemGetPtr(1);
  QWidgetAction * o = new QWidgetAction ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QWIDGETACTION_DELETE )
{
  QWidgetAction * obj = (QWidgetAction *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QWidget * defaultWidget() const
*/
HB_FUNC_STATIC( QWIDGETACTION_DEFAULTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * ptr = obj->defaultWidget ();
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void releaseWidget(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETACTION_RELEASEWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->releaseWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * requestWidget(QWidget * parent)
*/
HB_FUNC_STATIC( QWIDGETACTION_REQUESTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    QWidget * ptr = obj->requestWidget ( par1 );
    _qt5xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
void setDefaultWidget(QWidget * widget)
*/
HB_FUNC_STATIC( QWIDGETACTION_SETDEFAULTWIDGET )
{
  QWidgetAction * obj = (QWidgetAction *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->setDefaultWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
