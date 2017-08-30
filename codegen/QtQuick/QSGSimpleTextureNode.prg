$header

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
   METHOD setRect
   METHOD setTexture
   METHOD texture

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

/*
QSGSimpleTextureNode()
*/
$constructor=|new|

$deleteMethod

/*
QSGTexture::Filtering filtering() const
*/
$method=|QSGTexture::Filtering|filtering|

/*
QRectF rect() const
*/
$method=|QRectF|rect|

/*
void setFiltering(QSGTexture::Filtering filtering)
*/
$method=|void|setFiltering|QSGTexture::Filtering

/*
void setRect(const QRectF & r)
*/
$internalMethod=|void|setRect,setRect1|const QRectF &

/*
void setRect(qreal x, qreal y, qreal w, qreal h)
*/
$internalMethod=|void|setRect,setRect2|qreal,qreal,qreal,qreal

//[1]void setRect(const QRectF & r)
//[2]void setRect(qreal x, qreal y, qreal w, qreal h)

HB_FUNC_STATIC( QSGSIMPLETEXTURENODE_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    QSGSimpleTextureNode_setRect1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QSGSimpleTextureNode_setRect2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setTexture(QSGTexture * texture)
*/
$method=|void|setTexture|QSGTexture *

/*
QSGTexture * texture() const
*/
$method=|QSGTexture *|texture|

#pragma ENDDUMP
