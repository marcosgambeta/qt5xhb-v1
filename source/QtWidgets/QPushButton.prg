/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMENU
#endif

CLASS QPushButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QPushButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD autoDefault
   METHOD isDefault
   METHOD isFlat
   METHOD menu
   METHOD setAutoDefault
   METHOD setDefault
   METHOD setFlat
   METHOD setMenu
   METHOD showMenu
   METHOD minimumSizeHint
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPushButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPushButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QPushButton>
#endif

/*
explicit QPushButton ( QWidget * parent = 0 )
*/
void QPushButton_new1 ()
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QPushButton * o = new QPushButton ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
explicit QPushButton ( const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new2 ()
{
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QPushButton * o = new QPushButton ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new3 ()
{
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QString par2 = QLatin1String( hb_parc(2) );
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QPushButton * o = new QPushButton ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = 0 )
*/
void QPushButton_new4 ()
{
  QPixmap * par1 = (QPixmap *) _qt5xhb_itemGetPtr(1);
  QString par2 = QLatin1String( hb_parc(2) );
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QPushButton * o = new QPushButton ( *par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
}

//[1]explicit QPushButton ( QWidget * parent = 0 )
//[2]explicit QPushButton ( const QString & text, QWidget * parent = 0 )
//[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
//[4]QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QPushButton_new3();
  }
  else if( ISBETWEEN(2,3) && ISQPIXMAP(1) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QPushButton_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPUSHBUTTON_DELETE )
{
  QPushButton * obj = (QPushButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool autoDefault () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_AUTODEFAULT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->autoDefault (  ) );
  }
}

/*
bool isDefault () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISDEFAULT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isDefault (  ) );
  }
}

/*
bool isFlat () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_ISFLAT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retl( obj->isFlat (  ) );
  }
}

/*
QMenu * menu () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * ptr = obj->menu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
#endif
}

/*
void setAutoDefault ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETAUTODEFAULT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoDefault ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setDefault ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETDEFAULT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDefault ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlat ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETFLAT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setFlat ( (bool) hb_parl(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETMENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    obj->setMenu ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void showMenu ()
*/
HB_FUNC_STATIC( QPUSHBUTTON_SHOWMENU )
{
#ifndef QT_NO_MENU
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->showMenu (  );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QSize minimumSizeHint () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_MINIMUMSIZEHINT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->minimumSizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QPUSHBUTTON_SIZEHINT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

#pragma ENDDUMP
