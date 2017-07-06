$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTRANSFORM
REQUEST QLOCALE
#endif

CLASS QInputMethod INHERIT QObject

   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

$includes

#include <QRectF>
#include <QTransform>
#include <QLocale>


/*
QRectF cursorRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_CURSORRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->cursorRectangle () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
Qt::LayoutDirection inputDirection() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTDIRECTION )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->inputDirection () );
  }
}


/*
QTransform inputItemTransform() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_INPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->inputItemTransform () );
    _qt5xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
bool isAnimating() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISANIMATING )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isAnimating () );
  }
}


/*
bool isVisible() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_ISVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isVisible () );
  }
}


/*
QRectF keyboardRectangle() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_KEYBOARDRECTANGLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->keyboardRectangle () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QLocale locale() const
*/
HB_FUNC_STATIC( QINPUTMETHOD_LOCALE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->locale () );
    _qt5xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}


/*
void setInputItemTransform(const QTransform & transform)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETINPUTITEMTRANSFORM )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setInputItemTransform ( *PQTRANSFORM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVisible(bool visible)
*/
HB_FUNC_STATIC( QINPUTMETHOD_SETVISIBLE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void commit()
*/
HB_FUNC_STATIC( QINPUTMETHOD_COMMIT )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->commit ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hide()
*/
HB_FUNC_STATIC( QINPUTMETHOD_HIDE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->hide ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void invokeAction(Action a, int cursorPosition)
*/
HB_FUNC_STATIC( QINPUTMETHOD_INVOKEACTION )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->invokeAction ( (QInputMethod::Action) hb_parni(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reset()
*/
HB_FUNC_STATIC( QINPUTMETHOD_RESET )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void show()
*/
HB_FUNC_STATIC( QINPUTMETHOD_SHOW )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->show ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void update(Qt::InputMethodQueries queries)
*/
HB_FUNC_STATIC( QINPUTMETHOD_UPDATE )
{
  QInputMethod * obj = (QInputMethod *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->update ( (Qt::InputMethodQueries) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
