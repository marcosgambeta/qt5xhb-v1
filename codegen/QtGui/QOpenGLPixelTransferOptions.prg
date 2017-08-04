$header

#include "hbclass.ch"

CLASS QOpenGLPixelTransferOptions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD setAlignment
   METHOD alignment
   METHOD setSkipImages
   METHOD skipImages
   METHOD setSkipRows
   METHOD skipRows
   METHOD setSkipPixels
   METHOD skipPixels
   METHOD setImageHeight
   METHOD imageHeight
   METHOD setRowLength
   METHOD rowLength
   METHOD setLeastSignificantByteFirst
   METHOD isLeastSignificantBitFirst
   METHOD setSwapBytesEnabled
   METHOD isSwapBytesEnabled

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
QOpenGLPixelTransferOptions()
*/
$internalConstructor=|new1|

/*
QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/
$internalConstructor=|new2|const QOpenGLPixelTransferOptions &

//[1]QOpenGLPixelTransferOptions()
//[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QOpenGLPixelTransferOptions_new1();
  }
  else if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
  {
    QOpenGLPixelTransferOptions_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void swap(QOpenGLPixelTransferOptions &other)
*/
$method=|void|swap|QOpenGLPixelTransferOptions &

/*
void setAlignment(int alignment)
*/
$method=|void|setAlignment|int

/*
int alignment() const
*/
$method=|int|alignment|

/*
void setSkipImages(int skipImages)
*/
$method=|void|setSkipImages|int

/*
int skipImages() const
*/
$method=|int|skipImages|

/*
void setSkipRows(int skipRows)
*/
$method=|void|setSkipRows|int

/*
int skipRows() const
*/
$method=|int|skipRows|

/*
void setSkipPixels(int skipPixels)
*/
$method=|void|setSkipPixels|int

/*
int skipPixels() const
*/
$method=|int|skipPixels|

/*
void setImageHeight(int imageHeight)
*/
$method=|void|setImageHeight|int

/*
int imageHeight() const
*/
$method=|int|imageHeight|

/*
void setRowLength(int rowLength)
*/
$method=|void|setRowLength|int

/*
int rowLength() const
*/
$method=|int|rowLength|

/*
void setLeastSignificantByteFirst(bool lsbFirst)
*/
$method=|void|setLeastSignificantByteFirst|bool

/*
bool isLeastSignificantBitFirst() const
*/
$method=|bool|isLeastSignificantBitFirst|

/*
void setSwapBytesEnabled(bool swapBytes)
*/
$method=|void|setSwapBytesEnabled|bool

/*
bool isSwapBytesEnabled() const
*/
$method=|bool|isSwapBytesEnabled|

$extraMethods

#pragma ENDDUMP
