/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QBitmap INHERIT QPixmap

   METHOD new
   METHOD delete
   METHOD clear
   METHOD transformed
   METHOD fromData
   METHOD fromImage

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBitmap
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QBitmap>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QBitmap>
#endif

/*
QBitmap ()
*/
void QBitmap_new1 ()
{
  QBitmap * o = new QBitmap ();
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QPixmap & pixmap )
*/
void QBitmap_new2 ()
{
  QBitmap * o = new QBitmap ( *PQPIXMAP(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( int width, int height )
*/
void QBitmap_new3 ()
{
  QBitmap * o = new QBitmap ( PINT(1), PINT(2) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QSize & size )
*/
void QBitmap_new4 ()
{
  QBitmap * o = new QBitmap ( *PQSIZE(1) );
  _qt5xhb_storePointerAndFlag( o, true );
}

/*
QBitmap ( const QString & fileName, const char * format = 0 )
*/
void QBitmap_new5 ()
{
  QBitmap * o = new QBitmap ( PQSTRING(1), OPCONSTCHAR(2,0) );
  _qt5xhb_storePointerAndFlag( o, true );
}

//[1]QBitmap ()
//[2]QBitmap ( const QPixmap & pixmap )
//[3]QBitmap ( int width, int height )
//[4]QBitmap ( const QSize & size )
//[5]QBitmap ( const QString & fileName, const char * format = 0 )

HB_FUNC_STATIC( QBITMAP_NEW )
{
  if( ISNUMPAR(0) )
  {
    QBitmap_new1();
  }
  else if( ISNUMPAR(1) && ISQPIXMAP(1) )
  {
    QBitmap_new2();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBitmap_new3();
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    QBitmap_new4();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTCHAR(2) )
  {
    QBitmap_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QBITMAP_DELETE )
{
  QBitmap * obj = (QBitmap *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void clear ()
*/
HB_FUNC_STATIC( QBITMAP_CLEAR )
{
  QBitmap * obj = (QBitmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->clear ();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBitmap transformed ( const QTransform & matrix ) const
*/
HB_FUNC_STATIC( QBITMAP_TRANSFORMED )
{
  QBitmap * obj = (QBitmap *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISQTRANSFORM(1) )
    {
      QBitmap * ptr = new QBitmap( obj->transformed ( *PQTRANSFORM(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
static QBitmap fromData ( const QSize & size, const uchar * bits, QImage::Format monoFormat = QImage::Format_MonoLSB )
*/
HB_FUNC_STATIC( QBITMAP_FROMDATA )
{
  if( ISQSIZE(1) && ISOPTNUM(3) ) // TODO: revisar e implementar segundo parametro
  {
    const uchar * par2 = (const uchar *) _qt5xhb_itemGetPtr(2);
    int par3 = ISNIL(3)? (int) QImage::Format_MonoLSB : hb_parni(3);
    QBitmap * ptr = new QBitmap( QBitmap::fromData ( *PQSIZE(1), par2, (QImage::Format) par3 ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QBitmap fromImage ( const QImage & image, Qt::ImageConversionFlags flags = Qt::AutoColor )
*/
HB_FUNC_STATIC( QBITMAP_FROMIMAGE )
{
  if( ISQIMAGE(1) && ISOPTNUM(2) )
  {
    int par2 = ISNIL(2)? (int) Qt::AutoColor : hb_parni(2);
    QBitmap * ptr = new QBitmap( QBitmap::fromImage ( *PQIMAGE(1), (Qt::ImageConversionFlags) par2 ) );
    _qt5xhb_createReturnClass ( ptr, "QBITMAP", true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
