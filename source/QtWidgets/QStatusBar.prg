/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QStatusBar INHERIT QWidget

   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

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
#include <QStatusBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QStatusBar>
#endif

/*
QStatusBar ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QStatusBar * o = new QStatusBar ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSTATUSBAR_DELETE )
{
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
}

/*
void addPermanentWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->addPermanentWidget ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addWidget ( QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_ADDWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->addWidget ( par1, (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString currentMessage () const
*/
HB_FUNC_STATIC( QSTATUSBAR_CURRENTMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->currentMessage ().toLatin1().data() );
  }
}


/*
int insertPermanentWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTPERMANENTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->insertPermanentWidget ( PINT(1), par2, (int) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


/*
int insertWidget ( int index, QWidget * widget, int stretch = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_INSERTWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par2 = (QWidget *) _qt5xhb_itemGetPtr(2);
    hb_retni( obj->insertWidget ( PINT(1), par2, (int) ISNIL(3)? 0 : hb_parni(3) ) );
  }
}


/*
bool isSizeGripEnabled () const
*/
HB_FUNC_STATIC( QSTATUSBAR_ISSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isSizeGripEnabled () );
  }
}


/*
void removeWidget ( QWidget * widget )
*/
HB_FUNC_STATIC( QSTATUSBAR_REMOVEWIDGET )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QWidget * par1 = (QWidget *) _qt5xhb_itemGetPtr(1);
    obj->removeWidget ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSizeGripEnabled ( bool )
*/
HB_FUNC_STATIC( QSTATUSBAR_SETSIZEGRIPENABLED )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setSizeGripEnabled ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearMessage ()
*/
HB_FUNC_STATIC( QSTATUSBAR_CLEARMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->clearMessage ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showMessage ( const QString & message, int timeout = 0 )
*/
HB_FUNC_STATIC( QSTATUSBAR_SHOWMESSAGE )
{
  QStatusBar * obj = (QStatusBar *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMessage ( PQSTRING(1), (int) ISNIL(2)? 0 : hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
