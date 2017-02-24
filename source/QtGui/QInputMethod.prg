/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QLOCALE

CLASS QInputMethod INHERIT QObject

   DATA class_id INIT Class_Id_QInputMethod
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD cursorRectangle
   METHOD inputDirection
   METHOD inputItemTransform
   METHOD isAnimating
   METHOD isVisible
   METHOD keyboardRectangle
   METHOD locale
   METHOD setInputItemTransform
   METHOD setVisible
   METHOD commit
   METHOD hide
   METHOD invokeAction
   METHOD reset
   METHOD show
   METHOD update
   METHOD onAnimatingChanged
   METHOD onCursorRectangleChanged
   METHOD onInputDirectionChanged
   METHOD onKeyboardRectangleChanged
   METHOD onLocaleChanged
   METHOD onVisibleChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QInputMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QInputMethod>
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
#include "qt4xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QInputMethod>
#endif
#endif

#include <QRectF>
#include <QTransform>
#include <QLocale>


/*
QRectF cursorRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_CURSORRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->cursorRectangle (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
Qt::LayoutDirection inputDirection() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTDIRECTION )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->inputDirection (  ) );
  }
}


/*
QTransform inputItemTransform() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->inputItemTransform (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
bool isAnimating() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISANIMATING )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAnimating (  ) );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isVisible (  ) );
  }
}


/*
QRectF keyboardRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_KEYBOARDRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->keyboardRectangle (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QLocale locale() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_LOCALE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale (  ) );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setInputItemTransform(const QTransform & transform)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETINPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * par1 = (QTransform *) _qtxhb_itemGetPtr(1);
    obj->setInputItemTransform ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( (bool) hb_parl(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void commit()
*/
HB_FUNC_STATIC( QINPUTMETHOD_COMMIT )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->commit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hide()
*/
HB_FUNC_STATIC( QINPUTMETHOD_HIDE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void invokeAction(Action a, int cursorPosition)
*/
HB_FUNC_STATIC( QINPUTMETHOD_INVOKEACTION )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->invokeAction (  (QInputMethod::Action) par1, (int) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reset()
*/
HB_FUNC_STATIC( QINPUTMETHOD_RESET )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void show()
*/
HB_FUNC_STATIC( QINPUTMETHOD_SHOW )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHOD_UPDATE )
{
  QInputMethod * obj = (QInputMethod *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->update (  (Qt::InputMethodQueries) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
