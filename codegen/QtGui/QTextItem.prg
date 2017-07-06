$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QFONT
#endif

CLASS QTextItem

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD descent
   METHOD ascent
   METHOD width
   METHOD renderFlags
   METHOD text
   METHOD font

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

$deleteMethod

/*
qreal descent() const
*/
HB_FUNC_STATIC( QTEXTITEM_DESCENT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->descent () );
  }
}


/*
qreal ascent() const
*/
HB_FUNC_STATIC( QTEXTITEM_ASCENT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->ascent () );
  }
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTITEM_WIDTH )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
RenderFlags renderFlags() const
*/
HB_FUNC_STATIC( QTEXTITEM_RENDERFLAGS )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->renderFlags () );
  }
}


/*
QString text() const
*/
HB_FUNC_STATIC( QTEXTITEM_TEXT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->text () );
  }
}


/*
QFont font() const
*/
HB_FUNC_STATIC( QTEXTITEM_FONT )
{
  QTextItem * obj = (QTextItem *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QFont * ptr = new QFont( obj->font () );
    _qt5xhb_createReturnClass ( ptr, "QFONT", true );
  }
}

$extraMethods

#pragma ENDDUMP
