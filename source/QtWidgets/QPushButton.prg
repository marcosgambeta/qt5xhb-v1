/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QMENU
#endif

CLASS QPushButton INHERIT QAbstractButton

   DATA class_id INIT Class_Id_QPushButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QPushButton>
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
#include <QPushButton>
#endif
#endif

/*
QPushButton ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPUSHBUTTON_NEW1 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  QPushButton * o = new QPushButton ( par1 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QPushButton ( const QString & text, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPUSHBUTTON_NEW2 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QString par1 = QLatin1String( hb_parc(1) );
  QWidget * par2 = ISNIL(2)? 0 : (QWidget *) _qt5xhb_itemGetPtr(2);
  QPushButton * o = new QPushButton ( par1, par2 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}

/*
QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QPUSHBUTTON_NEW3 )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
  QString par2 = QLatin1String( hb_parc(2) );
  QWidget * par3 = ISNIL(3)? 0 : (QWidget *) _qt5xhb_itemGetPtr(3);
  QPushButton * o = new QPushButton ( par1, par2, par3 );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


//[1]QPushButton ( QWidget * parent = 0 )
//[2]QPushButton ( const QString & text, QWidget * parent = 0 )
//[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = 0 )

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPUSHBUTTON_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPUSHBUTTON_NEW2 );
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPUSHBUTTON_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPUSHBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
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
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * ptr = obj->menu (  );
    _qt5xhb_createReturnClass ( ptr, "QMENU" );
  }
}


/*
void setAutoDefault ( bool )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETAUTODEFAULT )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoDefault ( (bool) hb_parl(1) );
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
    obj->setDefault ( (bool) hb_parl(1) );
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
    obj->setFlat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMenu ( QMenu * menu )
*/
HB_FUNC_STATIC( QPUSHBUTTON_SETMENU )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMenu * par1 = (QMenu *) _qt5xhb_itemGetPtr(1);
    obj->setMenu ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
void showMenu () 
*/
HB_FUNC_STATIC( QPUSHBUTTON_SHOWMENU )
{
  QPushButton * obj = (QPushButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->showMenu (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
