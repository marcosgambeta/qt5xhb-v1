/*

  Qt5xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 5

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt5xhb_clsid.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QWebPluginFactory INHERIT QObject

   DATA class_id INIT Class_Id_QWebPluginFactory
   DATA class_flags INIT 1
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD refreshPlugins

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWebPluginFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QWebPluginFactory>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_clsid.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QWebPluginFactory>
#endif


HB_FUNC_STATIC( QWEBPLUGINFACTORY_DELETE )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QObject * create ( const QString & mimeType, const QUrl & url, const QStringList & argumentNames, const QStringList & argumentValues ) const = 0
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_CREATE )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    QString par1 = QLatin1String( hb_parc(1) );
    QUrl * par2 = (QUrl *) _qt5xhb_itemGetPtr(2);
    QStringList par3 = _qt5xhb_convert_array_parameter_to_qstringlist(3);
    //PHB_ITEM aStrings3 = hb_param(3, HB_IT_ARRAY);
    //int i3;
    //int nLen3 = hb_arrayLen(aStrings3);
    //for (i3=0;i3<nLen3;i3++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings3, i3+1) );
    //  par3 << temp;
    //}
    QStringList par4 = _qt5xhb_convert_array_parameter_to_qstringlist(4);
    //PHB_ITEM aStrings4 = hb_param(4, HB_IT_ARRAY);
    //int i4;
    //int nLen4 = hb_arrayLen(aStrings4);
    //for (i4=0;i4<nLen4;i4++)
    //{
    //  QString temp = QLatin1String( hb_arrayGetCPtr(aStrings4, i4+1) );
    //  par4 << temp;
    //}
    QObject * ptr = obj->create ( par1, *par2, par3, par4 );
    _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}



/*
virtual void refreshPlugins ()
*/
HB_FUNC_STATIC( QWEBPLUGINFACTORY_REFRESHPLUGINS )
{
  QWebPluginFactory * obj = (QWebPluginFactory *) _qt5xhb_itemGetPtrStackSelfItem();
  if( obj )
  {
    obj->refreshPlugins (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



#pragma ENDDUMP
