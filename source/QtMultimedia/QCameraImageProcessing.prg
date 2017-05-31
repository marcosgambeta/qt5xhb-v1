/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QCameraImageProcessing INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD contrast
   METHOD denoisingLevel
   METHOD isAvailable
   METHOD isWhiteBalanceModeSupported
   METHOD manualWhiteBalance
   METHOD saturation
   METHOD setContrast
   METHOD setDenoisingLevel
   METHOD setManualWhiteBalance
   METHOD setSaturation
   METHOD setSharpeningLevel
   METHOD setWhiteBalanceMode
   METHOD sharpeningLevel
   METHOD whiteBalanceMode

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCameraImageProcessing
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QCameraImageProcessing>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QCameraImageProcessing>
#endif


/*
qreal contrast() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_CONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->contrast () );
  }
}


/*
qreal denoisingLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_DENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->denoisingLevel () );
  }
}


/*
bool isAvailable() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISAVAILABLE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retl( obj->isAvailable () );
  }
}


/*
bool isWhiteBalanceModeSupported(WhiteBalanceMode mode) const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_ISWHITEBALANCEMODESUPPORTED )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isWhiteBalanceModeSupported ( (QCameraImageProcessing::WhiteBalanceMode) par1 ) );
  }
}


/*
qreal manualWhiteBalance() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_MANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->manualWhiteBalance () );
  }
}


/*
qreal saturation() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->saturation () );
  }
}


/*
void setContrast(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETCONTRAST )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContrast ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setDenoisingLevel(qreal level)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETDENOISINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setDenoisingLevel ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setManualWhiteBalance(qreal colorTemperature)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETMANUALWHITEBALANCE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setManualWhiteBalance ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSaturation(qreal value)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSATURATION )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSaturation ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSharpeningLevel(qreal level)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETSHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setSharpeningLevel ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWhiteBalanceMode(WhiteBalanceMode mode)
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SETWHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setWhiteBalanceMode ( (QCameraImageProcessing::WhiteBalanceMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal sharpeningLevel() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_SHARPENINGLEVEL )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retnd( obj->sharpeningLevel () );
  }
}


/*
WhiteBalanceMode whiteBalanceMode() const
*/
HB_FUNC_STATIC( QCAMERAIMAGEPROCESSING_WHITEBALANCEMODE )
{
  QCameraImageProcessing * obj = (QCameraImageProcessing *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    hb_retni( obj->whiteBalanceMode () );
  }
}



#pragma ENDDUMP
