/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
REQUEST QSIZE
REQUEST QKEYSEQUENCE
REQUEST QBUTTONGROUP
#endif

CLASS QAbstractButton INHERIT QWidget

   DATA self_destruction INIT .F.

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
#include <QAbstractButton>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QAbstractButton>
#endif

HB_FUNC_STATIC( QABSTRACTBUTTON_DELETE )
{
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
}

/*
bool autoExclusive () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->autoExclusive () );
  }
}

/*
void setAutoExclusive ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOEXCLUSIVE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoExclusive ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool autoRepeat () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->autoRepeat () );
  }
}

/*
void setAutoRepeat ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEAT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setAutoRepeat ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
int autoRepeatDelay () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->autoRepeatDelay () );
  }
}

/*
void setAutoRepeatDelay ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATDELAY )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAutoRepeatDelay ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}


/*
int autoRepeatInterval () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_AUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retni( obj->autoRepeatInterval () );
  }
}

/*
void setAutoRepeatInterval ( int )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETAUTOREPEATINTERVAL )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setAutoRepeatInterval ( PINT(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICON )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( (ISQICON(1)||ISCHAR(1)) )
    {
      QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
      obj->setIcon ( par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize iconSize () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QSize * ptr = new QSize( obj->iconSize () );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
void setIconSize ( const QSize & size )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETICONSIZE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQSIZE(1) )
    {
      obj->setIconSize ( *PQSIZE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isCheckable () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isCheckable () );
  }
}

/*
void setCheckable ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKABLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setCheckable ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isChecked () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isChecked () );
  }
}

/*
void setChecked ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETCHECKED )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setChecked ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isDown () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ISDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->isDown () );
  }
}

/*
void setDown ( bool )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETDOWN )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISLOG(1) )
    {
      obj->setDown ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QKeySequence shortcut () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QKeySequence * ptr = new QKeySequence( obj->shortcut () );
    _qt5xhb_createReturnClass ( ptr, "QKEYSEQUENCE", true );
  }
#endif
}

/*
void setShortcut ( const QKeySequence & key )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETSHORTCUT )
{
#ifndef QT_NO_SHORTCUT
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQKEYSEQUENCE(1) )
    {
      obj->setShortcut ( *PQKEYSEQUENCE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QString text () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    hb_retc( RQSTRING( obj->text () ) );
  }
}

/*
void setText ( const QString & text )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_SETTEXT )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->setText ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QButtonGroup * group () const
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_GROUP )
{
#ifndef QT_NO_BUTTONGROUP
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QButtonGroup * ptr = obj->group ();
    _qt5xhb_createReturnClass ( ptr, "QBUTTONGROUP" );
  }
#endif
}

/*
void animateClick ( int msec = 100 )
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_ANIMATECLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      obj->animateClick ( OPINT(1,100) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void click ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_CLICK )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->click ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void toggle ()
*/
HB_FUNC_STATIC( QABSTRACTBUTTON_TOGGLE )
{
  QAbstractButton * obj = (QAbstractButton *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->toggle ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
