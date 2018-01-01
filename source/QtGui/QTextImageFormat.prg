/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QTextImageFormat INHERIT QTextCharFormat

   METHOD new
   METHOD delete
   METHOD isValid
   METHOD setName
   METHOD name
   METHOD setWidth
   METHOD width
   METHOD setHeight
   METHOD height

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextImageFormat
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QTextImageFormat>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QTextImageFormat>
#endif

/*
QTextImageFormat()
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NEW )
{
  QTextImageFormat * o = new QTextImageFormat ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QTEXTIMAGEFORMAT_DELETE )
{
  QTextImageFormat * obj = (QTextImageFormat *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isValid() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_ISVALID )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
void setName(const QString &name)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETNAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString name() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_NAME )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
void setWidth(qreal width)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETWIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setWidth ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal width() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_WIDTH )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->width () );
  }
}


/*
void setHeight(qreal height)
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_SETHEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setHeight ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal height() const
*/
HB_FUNC_STATIC( QTEXTIMAGEFORMAT_HEIGHT )
{
  QTextImageFormat * obj = (QTextImageFormat *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQREAL( obj->height () );
  }
}



#pragma ENDDUMP
