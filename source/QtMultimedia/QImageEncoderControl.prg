/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QTXHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QIMAGEENCODERSETTINGS
#endif

CLASS QImageEncoderControl INHERIT QMediaControl

   DATA class_id INIT Class_Id_QImageEncoderControl
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD supportedImageCodecs
   METHOD imageCodecDescription
   METHOD supportedResolutions
   METHOD imageSettings
   METHOD setImageSettings
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QImageEncoderControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QImageEncoderControl>
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

#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
#include <QImageEncoderControl>
#endif
#endif


HB_FUNC_STATIC( QIMAGEENCODERCONTROL_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,0,0))
  QImageEncoderControl * obj = (QImageEncoderControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
#endif
}

/*
virtual QStringList supportedImageCodecs() const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SUPPORTEDIMAGECODECS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QStringList strl = obj->supportedImageCodecs (  );
    _qtxhb_convert_qstringlist_to_array ( strl );
  }
}


/*
virtual QString imageCodecDescription(const QString &codecName) const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_IMAGECODECDESCRIPTION )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    hb_retc( (const char *) obj->imageCodecDescription ( par1 ).toLatin1().data() );
  }
}


/*
virtual QList<QSize> supportedResolutions(const QImageEncoderSettings &settings,bool *continuous = 0) const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SUPPORTEDRESOLUTIONS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * par1 = (QImageEncoderSettings *) _qtxhb_itemGetPtr(1);
    bool par2;
    QList<QSize> list = obj->supportedResolutions ( *par1, &par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QSIZE" );
    #else
    pDynSym = hb_dynsymFindName( "QSIZE" );
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
        hb_itemPutPtr( pItem, (QSize *) new QSize ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
    hb_storl( par2, 2 );
  }
}


/*
virtual QImageEncoderSettings imageSettings() const = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_IMAGESETTINGS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * ptr = new QImageEncoderSettings( obj->imageSettings (  ) );
    _qt5xhb_createReturnClass ( ptr, "QIMAGEENCODERSETTINGS" );
  }
}


/*
virtual void setImageSettings(const QImageEncoderSettings &settings) = 0
*/
HB_FUNC_STATIC( QIMAGEENCODERCONTROL_SETIMAGESETTINGS )
{
  QImageEncoderControl * obj = (QImageEncoderControl *) _qtxhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QImageEncoderSettings * par1 = (QImageEncoderSettings *) _qtxhb_itemGetPtr(1);
    obj->setImageSettings ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
