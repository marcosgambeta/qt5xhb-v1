/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPICTURE
REQUEST QIODEVICE
REQUEST QBYTEARRAY
#endif

CLASS QPictureIO

   DATA pointer
   DATA class_id INIT Class_Id_QPictureIO
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD picture
   METHOD status
   METHOD format
   METHOD ioDevice
   METHOD fileName
   METHOD quality
   METHOD description
   METHOD parameters
   METHOD gamma
   METHOD setPicture
   METHOD setStatus
   METHOD setFormat
   METHOD setIODevice
   METHOD setFileName
   METHOD setQuality
   METHOD setDescription
   METHOD setParameters
   METHOD setGamma
   METHOD read
   METHOD write
   METHOD pictureFormat1
   METHOD pictureFormat2
   METHOD pictureFormat
   METHOD inputFormats
   METHOD outputFormats
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPictureIO
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QPictureIO>
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
#include <QPictureIO>
#endif

/*
QPictureIO()
*/
HB_FUNC_STATIC( QPICTUREIO_NEW1 )
{
  QPictureIO * o = new QPictureIO (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPictureIO *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPictureIO(QIODevice *ioDevice, const char *format)
*/
HB_FUNC_STATIC( QPICTUREIO_NEW2 )
{
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  const char * par2 = hb_parc(2);
  QPictureIO * o = new QPictureIO ( par1,  (const char *) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPictureIO *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}

/*
QPictureIO(const QString &fileName, const char *format)
*/
HB_FUNC_STATIC( QPICTUREIO_NEW3 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  const char * par2 = hb_parc(2);
  QPictureIO * o = new QPictureIO ( par1,  (const char *) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPictureIO *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QPictureIO()
//[2]QPictureIO(QIODevice *ioDevice, const char *format)
//[3]QPictureIO(const QString &fileName, const char *format)

HB_FUNC_STATIC( QPICTUREIO_NEW )
{
  // TODO: implementar
}

HB_FUNC_STATIC( QPICTUREIO_DELETE )
{
  QPictureIO * obj = (QPictureIO *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPicture &picture() const
*/
HB_FUNC_STATIC( QPICTUREIO_PICTURE )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const QPicture * ptr = &obj->picture (  );
    _qt5xhb_createReturnClass ( ptr, "QPICTURE" );
  }
}


/*
int status() const
*/
HB_FUNC_STATIC( QPICTUREIO_STATUS )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->status (  ) );
  }
}


/*
const char *format() const
*/
HB_FUNC_STATIC( QPICTUREIO_FORMAT )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->format (  );
    hb_retc( str1 );
  }
}


/*
QIODevice *ioDevice() const
*/
HB_FUNC_STATIC( QPICTUREIO_IODEVICE )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * ptr = obj->ioDevice (  );
    _qt5xhb_createReturnClass ( ptr, "QIODEVICE" );
  }
}


/*
QString fileName() const
*/
HB_FUNC_STATIC( QPICTUREIO_FILENAME )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->fileName (  ).toLatin1().data() );
  }
}


/*
int quality() const
*/
HB_FUNC_STATIC( QPICTUREIO_QUALITY )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->quality (  ) );
  }
}


/*
QString description() const
*/
HB_FUNC_STATIC( QPICTUREIO_DESCRIPTION )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retc( (const char *) obj->description (  ).toLatin1().data() );
  }
}


/*
const char *parameters() const
*/
HB_FUNC_STATIC( QPICTUREIO_PARAMETERS )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * str1 = obj->parameters (  );
    hb_retc( str1 );
  }
}


/*
float gamma() const
*/
HB_FUNC_STATIC( QPICTUREIO_GAMMA )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->gamma (  ) );
  }
}


/*
void setPicture(const QPicture &)
*/
HB_FUNC_STATIC( QPICTUREIO_SETPICTURE )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QPicture * par1 = (QPicture *) _qt5xhb_itemGetPtr(1);
    obj->setPicture ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStatus(int)
*/
HB_FUNC_STATIC( QPICTUREIO_SETSTATUS )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setStatus ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFormat(const char *)
*/
HB_FUNC_STATIC( QPICTUREIO_SETFORMAT )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setFormat (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setIODevice(QIODevice *)
*/
HB_FUNC_STATIC( QPICTUREIO_SETIODEVICE )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
    obj->setIODevice ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFileName(const QString &)
*/
HB_FUNC_STATIC( QPICTUREIO_SETFILENAME )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setFileName ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQuality(int)
*/
HB_FUNC_STATIC( QPICTUREIO_SETQUALITY )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setQuality ( (int) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDescription(const QString &)
*/
HB_FUNC_STATIC( QPICTUREIO_SETDESCRIPTION )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    obj->setDescription ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParameters(const char *)
*/
HB_FUNC_STATIC( QPICTUREIO_SETPARAMETERS )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    const char * par1 = hb_parc(1);
    obj->setParameters (  (const char *) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGamma(float)
*/
HB_FUNC_STATIC( QPICTUREIO_SETGAMMA )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    float par1 = hb_parnd(1);
    obj->setGamma ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool read()
*/
HB_FUNC_STATIC( QPICTUREIO_READ )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->read (  ) );
  }
}


/*
bool write()
*/
HB_FUNC_STATIC( QPICTUREIO_WRITE )
{
  QPictureIO * obj = (QPictureIO *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->write (  ) );
  }
}


/*
static QByteArray pictureFormat(const QString &fileName)
*/
HB_FUNC_STATIC( QPICTUREIO_PICTUREFORMAT1 )
{
  QString par1 = QLatin1String( hb_parc(1) );
  QByteArray * ptr = new QByteArray( QPictureIO::pictureFormat ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

/*
static QByteArray pictureFormat(QIODevice *)
*/
HB_FUNC_STATIC( QPICTUREIO_PICTUREFORMAT2 )
{
  QIODevice * par1 = (QIODevice *) _qt5xhb_itemGetPtr(1);
  QByteArray * ptr = new QByteArray( QPictureIO::pictureFormat ( par1 ) );
  _qt5xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


//[1]static QByteArray pictureFormat(const QString &fileName)
//[2]static QByteArray pictureFormat(QIODevice *)

HB_FUNC_STATIC( QPICTUREIO_PICTUREFORMAT )
{
  // TODO: implementar
}

/*
static QList<QByteArray> inputFormats()
*/
HB_FUNC_STATIC( QPICTUREIO_INPUTFORMATS )
{
  QList<QByteArray> list = QPictureIO::inputFormats (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}


/*
static QList<QByteArray> outputFormats()
*/
HB_FUNC_STATIC( QPICTUREIO_OUTPUTFORMATS )
{
  QList<QByteArray> list = QPictureIO::outputFormats (  );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QBYTEARRAY" );
  #else
  pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}




HB_FUNC_STATIC( QPICTUREIO_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

HB_FUNC_STATIC( QPICTUREIO_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPICTUREIO_NEWFROM );
}

HB_FUNC_STATIC( QPICTUREIO_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPICTUREIO_NEWFROM );
}

HB_FUNC_STATIC( QPICTUREIO_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPICTUREIO_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();
  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  hb_itemReturn( self );
}

#pragma ENDDUMP
