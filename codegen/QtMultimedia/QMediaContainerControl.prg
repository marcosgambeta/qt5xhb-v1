$header

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

$destructor

#pragma BEGINDUMP

$includes

#include <QStringList>

$deleteMethod

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