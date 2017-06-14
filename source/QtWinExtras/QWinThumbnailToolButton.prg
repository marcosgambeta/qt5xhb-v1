/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QWinThumbnailToolButton INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toolTip
   METHOD setToolTip
   METHOD icon
   METHOD setIcon
   METHOD isEnabled
   METHOD setEnabled
   METHOD isInteractive
   METHOD setInteractive
   METHOD isVisible
   METHOD setVisible
   METHOD dismissOnClick
   METHOD setDismissOnClick
   METHOD isFlat
   METHOD setFlat
   METHOD click

   METHOD onClicked
   METHOD onChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWinThumbnailToolButton
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolButton>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#include <QWinThumbnailToolButton>
#endif
#endif

/*
explicit QWinThumbnailToolButton(QObject *parent = 0)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * o = new QWinThumbnailToolButton ( OPQOBJECT(1,0) );
  _qt5xhb_storePointerAndFlag( o, false );
#endif
}


HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString toolTip() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_TOOLTIP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( RQSTRING( obj->toolTip () ) );
  }
#endif
}

/*
void setToolTip(const QString &toolTip)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETTOOLTIP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setToolTip ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
QIcon icon() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon * ptr = new QIcon( obj->icon () );
    _qt5xhb_createReturnClass ( ptr, "QICON", true );
  }
#endif
}

/*
void setIcon(const QIcon &icon)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETICON )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIcon par1 = ISOBJECT(1)? *(QIcon *) _qt5xhb_itemGetPtr(1) : QIcon(hb_parc(1));
    obj->setIcon ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isEnabled() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isEnabled () );
  }
#endif
}

/*
void setEnabled(bool enabled)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETENABLED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isInteractive() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISINTERACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isInteractive () );
  }
#endif
}

/*
void setInteractive(bool interactive)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETINTERACTIVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInteractive ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
#endif
}

/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool dismissOnClick() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_DISMISSONCLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->dismissOnClick () );
  }
#endif
}

/*
void setDismissOnClick(bool dismiss)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETDISMISSONCLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDismissOnClick ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
bool isFlat() const
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_ISFLAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isFlat () );
  }
#endif
}

/*
void setFlat(bool flat)
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_SETFLAT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFlat ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}


/*
void click()
*/
HB_FUNC_STATIC( QWINTHUMBNAILTOOLBUTTON_CLICK )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
  QWinThumbnailToolButton * obj = (QWinThumbnailToolButton *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->click ();
  }
  hb_itemReturn( hb_stackSelfItem() );
#endif
}




#pragma ENDDUMP
