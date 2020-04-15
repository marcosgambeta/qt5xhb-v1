%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QOpenGLPixelTransferOptions()
$internalConstructor=|new1|

$prototype=QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
$internalConstructor=|new2|const QOpenGLPixelTransferOptions &

/*
[1]QOpenGLPixelTransferOptions()
[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/

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

$prototype=void swap(QOpenGLPixelTransferOptions &other)
$method=|void|swap|QOpenGLPixelTransferOptions &

$prototype=void setAlignment(int alignment)
$method=|void|setAlignment|int

$prototype=int alignment() const
$method=|int|alignment|

$prototype=void setSkipImages(int skipImages)
$method=|void|setSkipImages|int

$prototype=int skipImages() const
$method=|int|skipImages|

$prototype=void setSkipRows(int skipRows)
$method=|void|setSkipRows|int

$prototype=int skipRows() const
$method=|int|skipRows|

$prototype=void setSkipPixels(int skipPixels)
$method=|void|setSkipPixels|int

$prototype=int skipPixels() const
$method=|int|skipPixels|

$prototype=void setImageHeight(int imageHeight)
$method=|void|setImageHeight|int

$prototype=int imageHeight() const
$method=|int|imageHeight|

$prototype=void setRowLength(int rowLength)
$method=|void|setRowLength|int

$prototype=int rowLength() const
$method=|int|rowLength|

$prototype=void setLeastSignificantByteFirst(bool lsbFirst)
$method=|void|setLeastSignificantByteFirst|bool

$prototype=bool isLeastSignificantBitFirst() const
$method=|bool|isLeastSignificantBitFirst|

$prototype=void setSwapBytesEnabled(bool swapBytes)
$method=|void|setSwapBytesEnabled|bool

$prototype=bool isSwapBytesEnabled() const
$method=|bool|isSwapBytesEnabled|

$extraMethods

#pragma ENDDUMP
