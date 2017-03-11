/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFrame INHERIT QWidget

   DATA class_id INIT Class_Id_QFrame
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD frameRect
   METHOD frameShadow
   METHOD frameShape
   METHOD frameStyle
   METHOD frameWidth
   METHOD lineWidth
   METHOD midLineWidth
   METHOD setFrameRect
   METHOD setFrameShadow
   METHOD setFrameShape
   METHOD setFrameStyle
   METHOD setLineWidth
   METHOD setMidLineWidth
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFrame
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QFrame>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QFrame>
#endif

/*
QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
*/
HB_FUNC_STATIC( QFRAME_NEW )
{
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) _qt5xhb_itemGetPtr(1);
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QFrame * o = new QFrame ( par1,  (Qt::WindowFlags) par2 );
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QFRAME_DELETE )
{
  QFrame * obj = (QFrame *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRect frameRect () const
*/
HB_FUNC_STATIC( QFRAME_FRAMERECT )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->frameRect (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
Shadow frameShadow () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESHADOW )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameShadow (  ) );
  }
}


/*
Shape frameShape () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESHAPE )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameShape (  ) );
  }
}


/*
int frameStyle () const
*/
HB_FUNC_STATIC( QFRAME_FRAMESTYLE )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameStyle (  ) );
  }
}


/*
int frameWidth () const
*/
HB_FUNC_STATIC( QFRAME_FRAMEWIDTH )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->frameWidth (  ) );
  }
}


/*
int lineWidth () const
*/
HB_FUNC_STATIC( QFRAME_LINEWIDTH )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->lineWidth (  ) );
  }
}


/*
int midLineWidth () const
*/
HB_FUNC_STATIC( QFRAME_MIDLINEWIDTH )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->midLineWidth (  ) );
  }
}


/*
void setFrameRect ( const QRect & )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMERECT )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setFrameRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameShadow ( Shadow )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESHADOW )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFrameShadow (  (QFrame::Shadow) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameShape ( Shape )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESHAPE )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFrameShape (  (QFrame::Shape) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFrameStyle ( int style )
*/
HB_FUNC_STATIC( QFRAME_SETFRAMESTYLE )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFrameStyle ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLineWidth ( int )
*/
HB_FUNC_STATIC( QFRAME_SETLINEWIDTH )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLineWidth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMidLineWidth ( int )
*/
HB_FUNC_STATIC( QFRAME_SETMIDLINEWIDTH )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setMidLineWidth ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QSize sizeHint () const
*/
HB_FUNC_STATIC( QFRAME_SIZEHINT )
{
  QFrame * obj = (QFrame *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->sizeHint (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}



#pragma ENDDUMP
