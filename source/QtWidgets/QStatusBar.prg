/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QStatusBar INHERIT QWidget

   DATA class_id INIT Class_Id_QStatusBar
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addPermanentWidget
   METHOD addWidget
   METHOD currentMessage
   METHOD insertPermanentWidget
   METHOD insertWidget
   METHOD isSizeGripEnabled
   METHOD removeWidget
   METHOD setSizeGripEnabled
   METHOD clearMessage
   METHOD showMessage
   METHOD onMessageChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStatusBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStatusBar>
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

#include "qt4xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QStatusBar>
#endif
#endif

/*
QStatusBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qtxhb_itemGetPtr(1);
  QStatusBar * o = new QStatusBar ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStatusBar *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSTATUSBAR_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QStatusBar * obj = (QStatusBar *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->addPermanentWidget ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->addWidget ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString currentMessage () const
*/
HB_FUNC_STATIC( QSTATUSBAR_CURRENTMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->currentMessage (  ).toLatin1().data() );
  }
}


/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->insertPermanentWidget ( (int) hb_parni(1), par2, (int) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qtxhb_itemGetPtr(2);
    hb_retni( obj->insertWidget ( (int) hb_parni(1), par2, (int) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


/*
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QSTATUSBAR_ISSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSizeGripEnabled (  ) );
  }
}


/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTATUSBAR_REMOVEWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qtxhb_itemGetPtr(1);
    obj->removeWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QSTATUSBAR_SETSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSizeGripEnabled ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSTATUSBAR_CLEARMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMessage (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMessage ( const QString & message, int timeout = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_SHOWMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->showMessage ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
