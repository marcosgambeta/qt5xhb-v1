$header

#include "hbclass.ch"

CLASS QOpenGLPixelTransferOptions

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW1 )
{
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions ();
  _qt5xhb_storePointerAndFlag( o, false );
}

/*
QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW2 )
{
  QOpenGLPixelTransferOptions * o = new QOpenGLPixelTransferOptions ( *PQOPENGLPIXELTRANSFEROPTIONS(1) );
  _qt5xhb_storePointerAndFlag( o, false );
}


//[1]QOpenGLPixelTransferOptions()
//[2]QOpenGLPixelTransferOptions(const QOpenGLPixelTransferOptions &)

HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOPENGLPIXELTRANSFEROPTIONS(1) )
  {
    HB_FUNC_EXEC( QOPENGLPIXELTRANSFEROPTIONS_NEW2 );
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
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SWAP )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QOpenGLPixelTransferOptions * par1 = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtr(1);
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAlignment(int alignment)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setAlignment ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int alignment() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ALIGNMENT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->alignment () );
  }
}


/*
void setSkipImages(int skipImages)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipImages ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipImages() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPIMAGES )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->skipImages () );
  }
}


/*
void setSkipRows(int skipRows)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipRows ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipRows() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPROWS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->skipRows () );
  }
}


/*
void setSkipPixels(int skipPixels)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSkipPixels ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int skipPixels() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SKIPPIXELS )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->skipPixels () );
  }
}


/*
void setImageHeight(int imageHeight)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETIMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setImageHeight ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int imageHeight() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_IMAGEHEIGHT )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->imageHeight () );
  }
}


/*
void setRowLength(int rowLength)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setRowLength ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int rowLength() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ROWLENGTH )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RINT( obj->rowLength () );
  }
}


/*
void setLeastSignificantByteFirst(bool lsbFirst)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETLEASTSIGNIFICANTBYTEFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setLeastSignificantByteFirst ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isLeastSignificantBitFirst() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISLEASTSIGNIFICANTBITFIRST )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isLeastSignificantBitFirst () );
  }
}


/*
void setSwapBytesEnabled(bool swapBytes)
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_SETSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSwapBytesEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isSwapBytesEnabled() const
*/
HB_FUNC_STATIC( QOPENGLPIXELTRANSFEROPTIONS_ISSWAPBYTESENABLED )
{
  QOpenGLPixelTransferOptions * obj = (QOpenGLPixelTransferOptions *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RBOOL( obj->isSwapBytesEnabled () );
  }
}

$extraMethods

#pragma ENDDUMP
