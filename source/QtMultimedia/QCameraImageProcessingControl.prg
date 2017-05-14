/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QVARIANT
#endif

CLASS QCameraImageProcessingControl INHERIT QMediaControl

   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD isParameterSupported
   METHOD isParameterValueSupported
   METHOD parameter
   METHOD setParameter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageProcessingControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageProcessingControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageProcessingControl>
#endif

HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_DELETE )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual bool isParameterSupported(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERSUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isParameterSupported (  (QCameraImageProcessingControl::ProcessingParameter) par1 ) );
  }
}


/*
virtual bool isParameterValueSupported(ProcessingParameter parameter, const QVariant & value) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_ISPARAMETERVALUESUPPORTED )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    hb_retl( obj->isParameterValueSupported (  (QCameraImageProcessingControl::ProcessingParameter) par1, *par2 ) );
  }
}


/*
virtual QVariant parameter(ProcessingParameter parameter) const = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_PARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * ptr = new QVariant( obj->parameter (  (QCameraImageProcessingControl::ProcessingParameter) par1 ) );
    _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual void setParameter(ProcessingParameter parameter, const QVariant & value) = 0
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSINGCONTROL_SETPARAMETER )
{
  QCameraImageProcessingControl * obj = (QCameraImageProcessingControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    QVariant * par2 = (QVariant *) _qt5xhb_itemGetPtr(2);
    obj->setParameter (  (QCameraImageProcessingControl::ProcessingParameter) par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
