$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSIZE
#endif

CLASS QSizeF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD isNull
   METHOD isEmpty
   METHOD isValid
   METHOD width
   METHOD height
   METHOD setWidth
   METHOD setHeight
   METHOD transpose
   METHOD transposed
   METHOD scale
   METHOD scaled
   METHOD expandedTo
   METHOD boundedTo
   METHOD toSize

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

$prototype=QSizeF()
$internalConstructor=|new1|

$prototype=QSizeF(const QSize &sz)
$internalConstructor=|new2|const QSize &

$prototype=QSizeF(qreal w, qreal h)
$internalConstructor=|new3|qreal,qreal

//[1]QSizeF()
//[2]QSizeF(const QSize &sz)
//[3]QSizeF(qreal w, qreal h)

HB_FUNC_STATIC( QSIZEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    QSizeF_new1();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QSizeF_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QSizeF_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool isNull() const
$method=|bool|isNull|

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=bool isValid() const
$method=|bool|isValid|

$prototype=qreal width() const
$method=|qreal|width|

$prototype=qreal height() const
$method=|qreal|height|

$prototype=void setWidth(qreal w)
$method=|void|setWidth|qreal

$prototype=void setHeight(qreal h)
$method=|void|setHeight|qreal

$prototype=void transpose()
$method=|void|transpose|

$prototype=QSizeF transposed() const
$method=|QSizeF|transposed|

$prototype=void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
$internalMethod=|void|scale,scale1|qreal,qreal,Qt::AspectRatioMode

$prototype=void scale(const QSizeF &s, Qt::AspectRatioMode mode)
$internalMethod=|void|scale,scale2|const QSizeF &,Qt::AspectRatioMode

//[1]void scale(qreal w, qreal h, Qt::AspectRatioMode mode)
//[2]void scale(const QSizeF &s, Qt::AspectRatioMode mode)

HB_FUNC_STATIC( QSIZEF_SCALE )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSizeF_scale1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QSizeF_scale2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
$internalMethod=|QSizeF|scaled,scaled1|qreal,qreal,Qt::AspectRatioMode

$prototype=QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const
$internalMethod=|QSizeF|scaled,scaled2|const QSizeF &,Qt::AspectRatioMode

//[1]QSizeF scaled(qreal w, qreal h, Qt::AspectRatioMode mode) const
//[2]QSizeF scaled(const QSizeF &s, Qt::AspectRatioMode mode) const

HB_FUNC_STATIC( QSIZEF_SCALED )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QSizeF_scaled1();
  }
  else if( ISNUMPAR(2) && ISQSIZEF(1) && ISNUM(2) )
  {
    QSizeF_scaled2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QSizeF expandedTo(const QSizeF &) const
$method=|QSizeF|expandedTo|const QSizeF &

$prototype=QSizeF boundedTo(const QSizeF &) const
$method=|QSizeF|boundedTo|const QSizeF &

$prototype=QSize toSize() const
$method=|QSize|toSize|

$extraMethods

#pragma ENDDUMP
