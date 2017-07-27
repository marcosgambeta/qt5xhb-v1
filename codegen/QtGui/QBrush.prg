$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCOLOR
REQUEST QGRADIENT
REQUEST QMATRIX
REQUEST QPIXMAP
REQUEST QIMAGE
REQUEST QTRANSFORM
#endif

CLASS QBrush

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD color
   METHOD gradient
   METHOD isOpaque
   METHOD matrix
   METHOD setColor
   METHOD setMatrix
   METHOD setStyle
   METHOD setTexture
   METHOD setTextureImage
   METHOD setTransform
   METHOD style
   METHOD texture
   METHOD textureImage
   METHOD transform

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
QBrush ()
*/
$internalConstructor=|new1|

/*
QBrush ( Qt::BrushStyle style )
*/
$internalConstructor=|new2|Qt::BrushStyle

/*
QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
*/
$internalConstructor=|new3|const QColor &,Qt::BrushStyle=Qt::SolidPattern

/*
QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
*/
$internalConstructor=|new4|Qt::GlobalColor,Qt::BrushStyle=Qt::SolidPattern

/*
QBrush ( const QColor & color, const QPixmap & pixmap )
*/
$internalConstructor=|new5|const QColor &,const QPixmap &

/*
QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
*/
$internalConstructor=|new6|Qt::GlobalColor,const QPixmap &

/*
QBrush ( const QPixmap & pixmap )
*/
$internalConstructor=|new7|const QPixmap &

/*
QBrush ( const QImage & image )
*/
$internalConstructor=|new8|const QImage &

/*
QBrush ( const QBrush & other )
*/
$internalConstructor=|new9|const QBrush &

/*
QBrush ( const QGradient & gradient )
*/
$internalConstructor=|new10|const QGradient &

//[ 1]QBrush ()
//[ 2]QBrush ( Qt::BrushStyle style )
//[ 3]QBrush ( const QColor & color, Qt::BrushStyle style = Qt::SolidPattern )
//[ 4]QBrush ( Qt::GlobalColor color, Qt::BrushStyle style = Qt::SolidPattern )
//[ 5]QBrush ( const QColor & color, const QPixmap & pixmap )
//[ 6]QBrush ( Qt::GlobalColor color, const QPixmap & pixmap )
//[ 7]QBrush ( const QPixmap & pixmap )
//[ 8]QBrush ( const QImage & image )
//[ 9]QBrush ( const QBrush & other )
//[10]QBrush ( const QGradient & gradient )

HB_FUNC_STATIC( QBRUSH_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBrush_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_new2();
  }
  else if( ISBETWEEN(1,2) && (ISQCOLOR(1)||ISCHAR(1)) && ISOPTNUM(2) )
  {
    QBrush_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
  {
    QBrush_new4();
  }
  else if( ISNUMPAR(2) && (ISQCOLOR(1)||ISCHAR(1)) && ISQPIXMAP(2) )
  {
    QBrush_new5();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPIXMAP(2) )
  {
    QBrush_new6();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBrush_new7();
  }
  else if( ISNUMPAR(1) && ISQIMAGE(1) )
  {
    QBrush_new8();
  }
  else if( ISNUMPAR(1) && ISQBRUSH(1) )
  {
    QBrush_new9();
  }
  // Classe QGradient e derivadas (TODO: revisar e remover(?) comparacoes
  else if( ISNUMPAR(1) && ISQGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQCONICALGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQLINEARGRADIENT(1) )
  {
    QBrush_new10();
  }
  else if( ISNUMPAR(1) && ISQRADIALGRADIENT(1) )
  {
    QBrush_new10();
  }
  //
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QColor & color () const
*/
$method=|const QColor &|color|

/*
const QGradient * gradient () const
*/
$method=|const QGradient *|gradient|

/*
bool isOpaque () const
*/
$method=|bool|isOpaque|

/*
const QMatrix & matrix () const // TODO: revisar e corrigir(?)
*/
$method=|const QMatrix &|matrix|

/*
void setColor ( const QColor & color )
*/
$internalMethod=|void|setColor,setColor1|const QColor &

/*
void setColor ( Qt::GlobalColor color )
*/
$internalMethod=|void|setColor,setColor2|Qt::GlobalColor

//[1]void setColor ( const QColor & color )
//[2]void setColor ( Qt::GlobalColor color )

HB_FUNC_STATIC( QBRUSH_SETCOLOR )
{
  if( ISNUMPAR(1) && (ISQCOLOR(1)||ISCHAR(1)) )
  {
    QBrush_setColor1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QBrush_setColor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setMatrix ( const QMatrix & matrix )
*/
$method=|void|setMatrix|const QMatrix &

/*
void setStyle ( Qt::BrushStyle style )
*/
$method=|void|setStyle|Qt::BrushStyle

/*
void setTexture ( const QPixmap & pixmap )
*/
$method=|void|setTexture|const QPixmap &

/*
void setTextureImage ( const QImage & image )
*/
$method=|void|setTextureImage|const QImage &

/*
void setTransform ( const QTransform & matrix )
*/
$method=|void|setTransform|const QTransform &

/*
Qt::BrushStyle style () const
*/
$method=|Qt::BrushStyle|style|

/*
QPixmap texture () const
*/
$method=|QPixmap|texture|

/*
QImage textureImage () const
*/
$method=|QImage|textureImage|

/*
QTransform transform () const
*/
$method=|QTransform|transform|

$extraMethods

#pragma ENDDUMP
