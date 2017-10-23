/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSGTEXTURE
#endif

CLASS QSGSimpleTextureNode INHERIT QSGGeometryNode

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD filtering
   METHOD rect
   METHOD setFiltering
   METHOD setRect1
   METHOD setRect2
   METHOD setRect
   METHOD setTexture
   METHOD texture

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSGSimpleTextureNode
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSGSimpleTextureNode>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSGSimpleTextureNode>
#endif

/*
QSGSimpleTextureNode()
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_NEW )
{
  QSGSimpleTextureNode * o = new QSGSimpleTextureNode ();
  _qt5xhb_storePointerAndFlag( o, false );
}


HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_DELETE )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSGTexture::Filtering filtering() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_FILTERING )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filtering () );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_RECT )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setFiltering(QSGTexture::Filtering filtering)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETFILTERING )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setFiltering ( (QSGTexture::Filtering) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRect(const QRectF & r)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT1 )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect(qreal x, qreal y, qreal w, qreal h)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT2 )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setRect(const QRectF & r)
//[2]void setRect(qreal x, qreal y, qreal w, qreal h)

HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QSGSIMPLETEXTURENODE_SETRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QSGSIMPLETEXTURENODE_SETRECT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setTexture(QSGTexture * texture)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETTEXTURE )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTexture * par1 = (QSGTexture *) _qt5xhb_itemGetPtr(1);
    obj->setTexture ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGTexture * texture() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_TEXTURE )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTexture * ptr = obj->texture ();
    _qt5xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}



#pragma ENDDUMP
