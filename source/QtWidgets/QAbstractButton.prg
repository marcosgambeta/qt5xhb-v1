/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
REQUEST QBUTTONGROUP
#endif

CLASS QAbstractButton INHERIT QWidget

   DATA class_id INIT Class_Id_QAbstractButton
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD autoExclusive
   METHOD setAutoExclusive
   METHOD autoRepeat
   METHOD setAutoRepeat
   METHOD autoRepeatDelay
   METHOD setAutoRepeatDelay
   METHOD autoRepeatInterval
   METHOD setAutoRepeatInterval
   METHOD icon
   METHOD setIcon
   METHOD iconSize
   METHOD setIconSize
   METHOD isCheckable
   METHOD setCheckable
   METHOD isChecked
   METHOD setChecked
   METHOD isDown
   METHOD setDown
   METHOD shortcut
   METHOD setShortcut
   METHOD text
   METHOD setText
   METHOD group
   METHOD animateClick
   METHOD click
   METHOD toggle
   METHOD onClicked
   METHOD onPressed
   METHOD onReleased
   METHOD onToggled
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QAbstractButton>
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
#include <QAbstractButton>
#endif
#endif


HB_FUNC_STATIC( QABSTRACTBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QAbstractButton * obj = (QAbstractButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool autoExclusive () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoExclusive (  ) );
  }
}

/*
void setAutoExclusive ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoExclusive ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool autoRepeat () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->autoRepeat (  ) );
  }
}

/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoRepeat ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int autoRepeatDelay () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->autoRepeatDelay (  ) );
  }
}

/*
void setAutoRepeatDelay ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoRepeatDelay ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int autoRepeatInterval () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->autoRepeatInterval (  ) );
  }
}

/*
void setAutoRepeatInterval ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAutoRepeatInterval ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QIcon icon () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qtxhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize (  ) );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qtxhb_itemGetPtr(1);
    obj->setIconSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isCheckable (  ) );
  }
}

/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setCheckable ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isChecked () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isChecked (  ) );
  }
}

/*
void setChecked ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setChecked ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isDown () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isDown (  ) );
  }
}

/*
void setDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDown ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut (  ) );
    _qt4xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
#endif
}

/*
void setShortcut ( const QKeySequence & key )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QKeySequence * par1 = (QKeySequence *) _qtxhb_itemGetPtr(1);
    obj->setShortcut ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QString text () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->text (  ).toLatin1().data() );
  }
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETTEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setText ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QButtonGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_GROUP )
{
#ifndef QT_NO_BUTTONGROUP
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QButtonGroup * ptr = obj->group (  );
    _qt4xhb_createReturnClass ( ptr, "QBUTTONGROUP" );
  }
#endif
}


/*
void animateClick ( int msec = 100 )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ANIMATECLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->animateClick ( (int) ISNIL(1)? 100 : hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void click ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_CLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->click (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void toggle ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TOGGLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->toggle (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
