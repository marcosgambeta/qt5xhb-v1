/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

CLASS QMediaContainerControl INHERIT QMediaControl

   DATA class_flags INIT 0
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
#include "qt5xhb_clsid.h"
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
    hb_retc( (const char *) obj->containerDescription ( PQSTRING(1) ).toLatin1().data() );
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
    hb_retc( (const char *) obj->containerFormat (  ).toLatin1().data() );
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
    QStringList strl = obj->supportedContainers (  );
    _qt5xhb_convert_qstringlist_to_array ( strl );
  }
}



#pragma ENDDUMP
