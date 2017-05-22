/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

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

PROCEDURE destroyObject () CLASS QTextObjectInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextObjectInterface>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextObjectInterface>
#endif


HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_DELETE )
{
  QTextObjectInterface * obj = (QTextObjectInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
    QPainter * par1 = (QPainter *) _qt5xhb_itemGetPtr(1);
    QRectF * par2 = (QRectF *) _qt5xhb_itemGetPtr(2);
    QTextDocument * par3 = (QTextDocument *) _qt5xhb_itemGetPtr(3);
    QTextFormat * par5 = (QTextFormat *) _qt5xhb_itemGetPtr(5);
    obj->drawObject ( par1, *par2, par3, PINT(4), *par5 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QTEXTOBJECTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QTEXTOBJECTINTERFACE_NEWFROM );
}

HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QTEXTOBJECTINTERFACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
