/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSGTEXTURE
#endif

CLASS QSGSimpleTextureNode INHERIT QSGGeometryNode

   DATA class_id INIT Class_Id_QSGSimpleTextureNode
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGSimpleTextureNode>
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
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QSGSimpleTextureNode>
#endif
#endif

/*
QSGSimpleTextureNode()
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QSGSimpleTextureNode * o = new QSGSimpleTextureNode (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSGSimpleTextureNode *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
#endif
}


HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
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
#endif
}

/*
QSGTexture::Filtering filtering() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_FILTERING )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->filtering (  ) );
  }
}


/*
QRectF rect() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_RECT )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
void setFiltering(QSGTexture::Filtering filtering)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETFILTERING )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFiltering (  (QSGTexture::Filtering) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRect(const QRectF & r)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT1 )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QRectF  * par1 = (const QRectF  *) _qtxhb_itemGetPtr(1);
    obj->setRect ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect(qreal x, qreal y, qreal w, qreal h)
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT2 )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    obj->setRect ( par1, par2, par3, par4 );
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
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTexture * par1 = (QSGTexture *) _qtxhb_itemGetPtr(1);
    obj->setTexture ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QSGTexture * texture() const
*/
HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_TEXTURE )
{
  QSGSimpleTextureNode * obj = (QSGSimpleTextureNode *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSGTexture * ptr = obj->texture (  );
    _qt4xhb_createReturnClass ( ptr, "QSGTEXTURE" );
  }
}



#pragma ENDDUMP
