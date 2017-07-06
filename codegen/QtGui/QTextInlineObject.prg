$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTFORMAT
#endif

CLASS QTextInlineObject

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
   METHOD rect
   METHOD width
   METHOD ascent
   METHOD descent
   METHOD height
   METHOD textDirection
   METHOD setWidth
   METHOD setAscent
   METHOD setDescent
   METHOD textPosition
   METHOD formatIndex
   METHOD format

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QTextInlineObject(int i, QTextEngine *e)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW1 )
{
  QTextEngine * par2 = (QTextEngine *) _qt5xhb_itemGetPtr(2);
  QTextInlineObject * o = new QTextInlineObject ( PINT(1), par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QTextInlineObject()
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW2 )
{
  QTextInlineObject * o = new QTextInlineObject ();
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QTextInlineObject(int i, QTextEngine *e)
//[2]QTextInlineObject()

// TODO: QTextEngine ?

HB_FUNC_STATIC( QTEXTINLINEOBJECT_NEW )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEW1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTEXTINLINEOBJECT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ISVALID )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_RECT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_WIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_ASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}


/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_DESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_HEIGHT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->height () );
  }
}


/*
Qt::LayoutDirection textDirection() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTDIRECTION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->textDirection () );
  }
}


/*
void setWidth(qreal w)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETWIDTH )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAscent(qreal a)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETASCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAscent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescent(qreal d)
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_SETDESCENT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDescent ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int textPosition() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_TEXTPOSITION )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->textPosition () );
  }
}


/*
int formatIndex() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMATINDEX )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->formatIndex () );
  }
}


/*
QTextFormat format() const
*/
HB_FUNC_STATIC( QTEXTINLINEOBJECT_FORMAT )
{
  QTextInlineObject * obj = (QTextInlineObject *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextFormat * ptr = new QTextFormat( obj->format () );
    _qt5xhb_createReturnClass ( ptr, "QTEXTFORMAT" );
  }
}

$extraMethods

#pragma ENDDUMP
