$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QTextObjectInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD intrinsicSize
   METHOD drawObject

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
virtual QSizeF intrinsicSize(QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
*/
HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_INTRINSICSIZE )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * par1 = (QTextDocument *) _qt5xhb_itemGetPtr(1);
    QTextFormat * par3 = (QTextFormat *) _qt5xhb_itemGetPtr(3);
    QSizeF * ptr = new QSizeF( obj->intrinsicSize ( par1, PINT(2), *par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
virtual void drawObject(QPainter *painter, const QRectF &rect, QTextDocument *doc, int posInDocument, const QTextFormat &format) = 0
*/
HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_DRAWOBJECT )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QTextDocument * par3 = (QTextDocument *) _qt5xhb_itemGetPtr(3);
    QTextFormat * par5 = (QTextFormat *) _qt5xhb_itemGetPtr(5);
    obj->drawObject ( PQPAINTER(1), *PQRECTF(2), par3, PINT(4), *par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
