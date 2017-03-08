/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QSIZE
REQUEST QRECT
REQUEST QRECTF
#endif

CLASS QSvgGenerator INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QSvgGenerator
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD description
   METHOD fileName
   METHOD outputDevice
   METHOD resolution
   METHOD setDescription
   METHOD setFileName
   METHOD setOutputDevice
   METHOD setResolution
   METHOD setSize
   METHOD setTitle
   METHOD setViewBox1
   METHOD setViewBox2
   METHOD setViewBox
   METHOD size
   METHOD title
   METHOD viewBox
   METHOD viewBoxF
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSvgGenerator
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QSvgGenerator>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QSvgGenerator>
#endif

/*
QSvgGenerator ()
*/
HB_FUNC_STATIC( QSVGGENERATOR_NEW )
{
  QSvgGenerator * o = new QSvgGenerator (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSvgGenerator *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QSVGGENERATOR_DELETE )
{
  QSvgGenerator * obj = (QSvgGenerator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QString description () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_DESCRIPTION )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
  }
}


/*
QString fileName () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_FILENAME )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
QIODevice * outputDevice () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_OUTPUTDEVICE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->outputDevice (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
int resolution () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_RESOLUTION )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->resolution (  ) );
  }
}


/*
void setDescription ( const QString & description )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETDESCRIPTION )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileName ( const QString & fileName )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETFILENAME )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setOutputDevice ( QIODevice * outputDevice )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETOUTPUTDEVICE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setOutputDevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setResolution ( int dpi )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETRESOLUTION )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setResolution ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSize ( const QSize & size )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETSIZE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * par1 = (QSize *) _qt5xhb_itemGetPtr(1);
    obj->setSize ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETTITLE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setTitle ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setViewBox ( const QRect & viewBox )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX1 )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * par1 = (QRect *) _qt5xhb_itemGetPtr(1);
    obj->setViewBox ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewBox ( const QRectF & viewBox )
*/
HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX2 )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * par1 = (QRectF *) _qt5xhb_itemGetPtr(1);
    obj->setViewBox ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setViewBox ( const QRect & viewBox )
//[2]void setViewBox ( const QRectF & viewBox )

HB_FUNC_STATIC( QSVGGENERATOR_SETVIEWBOX )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QSVGGENERATOR_SETVIEWBOX1 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QSVGGENERATOR_SETVIEWBOX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QSize size () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_SIZE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QSize * ptr = new QSize( obj->size (  ) );
    _qt5xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}


/*
QString title () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_TITLE )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->title (  ).toLatin1().data() );
  }
}


/*
QRect viewBox () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_VIEWBOX )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRect * ptr = new QRect( obj->viewBox (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
QRectF viewBoxF () const
*/
HB_FUNC_STATIC( QSVGGENERATOR_VIEWBOXF )
{
  QSvgGenerator * obj = (QSvgGenerator *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->viewBoxF (  ) );
    _qt5xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}



#pragma ENDDUMP
