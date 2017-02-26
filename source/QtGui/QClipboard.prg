/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QIMAGE
REQUEST QMIMEDATA
REQUEST QPIXMAP
#endif

CLASS QClipboard INHERIT QObject

   DATA class_id INIT Class_Id_QClipboard
   DATA class_flags INIT 1
   DATA self_destruction INIT .f.

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
   METHOD text1
   METHOD text2
   METHOD text
   METHOD onChanged
   METHOD onDataChanged
   METHOD onFindBufferChanged
   METHOD onSelectionChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QClipboard
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QClipboard>
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
#include <QClipboard>
#endif
#endif

#include <QImage>
#include <QMimeData>
#include <QPixmap>


/*
void clear ( Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_CLEAR )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    obj->clear (  (QClipboard::Mode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QImage image ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_IMAGE )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    QImage * ptr = new QImage( obj->image (  (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QIMAGE", true );
  }
}


/*
const QMimeData * mimeData ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_MIMEDATA )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    const QMimeData * ptr = obj->mimeData (  (QClipboard::Mode) par1 );
    _qt4xhb_createReturnClass ( ptr, "QMIMEDATA" );
  }
}


/*
bool ownsClipboard () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSCLIPBOARD )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->ownsClipboard (  ) );
  }
}


/*
bool ownsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->ownsFindBuffer (  ) );
  }
}


/*
bool ownsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_OWNSSELECTION )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->ownsSelection (  ) );
  }
}


/*
QPixmap pixmap ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_PIXMAP )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    QPixmap * ptr = new QPixmap( obj->pixmap (  (QClipboard::Mode) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPIXMAP", true );
  }
}


/*
void setImage ( const QImage & image, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETIMAGE )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImage * par1 = (QImage *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    obj->setImage ( *par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMimeData ( QMimeData * src, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETMIMEDATA )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QMimeData * par1 = (QMimeData *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    obj->setMimeData ( par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPixmap ( const QPixmap & pixmap, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETPIXMAP )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPixmap * par1 = (QPixmap *) _qtxhb_itemGetPtr(1);
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    obj->setPixmap ( *par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setText ( const QString & text, Mode mode = Clipboard )
*/
HB_FUNC_STATIC( QCLIPBOARD_SETTEXT )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    obj->setText ( par1,  (QClipboard::Mode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool supportsFindBuffer () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSFINDBUFFER )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsFindBuffer (  ) );
  }
}


/*
bool supportsSelection () const
*/
HB_FUNC_STATIC( QCLIPBOARD_SUPPORTSSELECTION )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->supportsSelection (  ) );
  }
}


/*
QString text ( Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_TEXT1 )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QClipboard::Clipboard : hb_parni(1);
    hb_retc( (const char *) obj->text (  (QClipboard::Mode) par1 ).toLatin1().data() );
  }
}

/*
QString text ( QString & subtype, Mode mode = Clipboard ) const
*/
HB_FUNC_STATIC( QCLIPBOARD_TEXT2 )
{
  QClipboard * obj = (QClipboard *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    int par2 = ISNIL(2)? (int) QClipboard::Clipboard : hb_parni(2);
    hb_retc( (const char *) obj->text ( par1,  (QClipboard::Mode) par2 ).toLatin1().data() );
  }
}


//[1]QString text ( Mode mode = Clipboard ) const
//[2]QString text ( QString & subtype, Mode mode = Clipboard ) const

HB_FUNC_STATIC( QCLIPBOARD_TEXT )
{
  if( ISBETWEEN(1,2) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QCLIPBOARD_TEXT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



#pragma ENDDUMP
