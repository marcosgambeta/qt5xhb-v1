$header

#include "hbclass.ch"

CLASS QPictureFormatPlugin INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD loadPicture
   METHOD savePicture
   METHOD installIOHandler

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

/*
virtual bool loadPicture(const QString &format, const QString &filename, QPicture *pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_LOADPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISQPICTURE(3) )
    {
      QPicture * par3 = (QPicture *) _qt5xhb_itemGetPtr(3);
      RBOOL( obj->loadPicture ( PQSTRING(1), PQSTRING(2), par3 ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool savePicture(const QString &format, const QString &filename, const QPicture &pic)
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_SAVEPICTURE )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) && ISCHAR(2) && ISQPICTURE(3) )
    {
      RBOOL( obj->savePicture ( PQSTRING(1), PQSTRING(2), *PQPICTURE(3) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual bool installIOHandler(const QString &format) = 0
*/
HB_FUNC_STATIC( QPICTUREFORMATPLUGIN_INSTALLIOHANDLER )
{
  QPictureFormatPlugin * obj = (QPictureFormatPlugin *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
    if( ISCHAR(1) )
    {
      RBOOL( obj->installIOHandler ( PQSTRING(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
