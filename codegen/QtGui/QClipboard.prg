$header

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD clear
   METHOD image
   METHOD mimeData
   METHOD ownsClipboard
   METHOD ownsFindBuffer
   METHOD ownsSelection
   METHOD pixmap
   METHOD setImage
   METHOD setMimeData
   METHOD setPixmap
   METHOD setText
   METHOD supportsFindBuffer
   METHOD supportsSelection
   METHOD text

   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QImage>
#include <QMimeData>
#include <QPixmap>

/*
void clear ( Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
      obj->clear ( (QClipboard::Mode) par1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QImage image ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
      QImage * ptr = new QImage( obj->image ( (QClipboard::Mode) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QIMAGE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
      const QMimeData * ptr = obj->mimeData ( (QClipboard::Mode) par1 );
      _qt5xhb_createReturnClass ( ptr, "QMIMEDATA" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool ownsClipboard () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->ownsClipboard () );
  }
}

/*
bool ownsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->ownsFindBuffer () );
  }
}

/*
bool ownsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->ownsSelection () );
  }
}

/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISOPTNUM(1) )
    {
      int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
      QPixmap * ptr = new QPixmap( obj->pixmap ( (QClipboard::Mode) par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QPIXMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQIMAGE(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
      obj->setImage ( *PQIMAGE(1), (QClipboard::Mode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQMIMEDATA(1) && ISOPTNUM(2) )
    {
      QMimeData * par1 = (QMimeData *) _qt5xhb_itemGetPtr(1);
      int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
      obj->setMimeData ( par1, (QClipboard::Mode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQPIXMAP(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
      obj->setPixmap ( *PQPIXMAP(1), (QClipboard::Mode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISOPTNUM(2) )
    {
      int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
      obj->setText ( PQSTRING(1), (QClipboard::Mode) par2 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool supportsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->supportsFindBuffer () );
  }
}

/*
bool supportsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->supportsSelection () );
  }
}

/*
QString text ( Mode mode = Clipboard ) const
*/
void QClipboard_text1 ()
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    RQSTRING( obj->text ( (QClipboard::Mode) par1 ) );
  }
}

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
void QClipboard_text2 ()
{
  QClipboard * obj = (QClipboard *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    RQSTRING( obj->text ( par1, (QClipboard::Mode) par2 ) );
  }
}

//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QClipboard_text1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTNUM(2) )
  {
    QClipboard_text2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
