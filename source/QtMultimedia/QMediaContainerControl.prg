/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

CLASS QMediaContainerControl INHERIT QMediaControl

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD containerDescription
   METHOD containerFormat
   METHOD setContainerFormat
   METHOD supportedContainers

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMediaContainerControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QMediaContainerControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QMediaContainerControl>
#endif

#include <QStringList>


HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_DELETE )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QString containerDescription(const QString & format) const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_CONTAINERDESCRIPTION )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->containerDescription ( PQSTRING(1) ) );
  }
}


/*
virtual QString containerFormat() const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_CONTAINERFORMAT )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRING( obj->containerFormat () );
  }
}


/*
virtual void setContainerFormat(const QString & format) = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_SETCONTAINERFORMAT )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->setContainerFormat ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QStringList supportedContainers() const = 0
*/
HB_FUNC_STATIC( QMEDIACONTAINERCONTROL_SUPPORTEDCONTAINERS )
{
  QMediaContainerControl * obj = (QMediaContainerControl *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    RQSTRINGLIST( obj->supportedContainers () );
  }
}



#pragma ENDDUMP
